#! /usr/bin/env ruby
#
#   check-strongswan-connection.rb
#
# DESCRIPTION:
#   This plugin checks the health of a Strongswan VPN connection
#
# OUTPUT:
#   plain text
#
# PLATFORMS:
#   Linux
#
# DEPENDENCIES:
#   gem: sensu-plugin
#
# USAGE:
#   check-strongswan-connectionion.rb -c CONNECTION_NAME
#
# NOTES:
#   This plugin should be executed as root using sudo
#
# LICENSE:
#   Copyright Adrien Waksberg <adrien.waksberg@doctolib.fr>
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

require 'sensu-plugin/check/cli'
require 'open3'
require 'set'

# check strongswan connection status
class CheckStrongswanConnection < Sensu::Plugin::Check::CLI
  option :connection,
         description: 'Connection name to check',
         short: '-c NAME',
         long: '--connection NAME'

  def run_ipsec_statusall
    stdout, stderr, result = Open3.capture3("ipsec statusall #{config[:connection]}")
    unknown stderr unless result.success?
    stdout
  end

  def run
    ipsec_status = run_ipsec_statusall
    connection_names = Set.new
    established_connection_name = Set.new
    ipsec_status.each_line do |line|
      if line.match(/^Connections:/) .. line.match(/^Security Associations/)
        result = line.match(/^(?<name>(.*)):.*local/)
        connection_names << result[:name] if result
      end

      if line.match(/^Security Associations/) .. false
        result = line.match(/^(?<name>(.*))\{.*INSTALLED, TUNNEL,/)
        established_connection_name << result[:name] if result
      end
    end

    if connection_names.empty?
      warning "the connection(s) #{config[:connection]} doesn't exist"
    elsif connection_names == established_connection_name
      ok "the connection(s) #{connection_names.to_a.join(', ')} is up"
    else
      critical "the connection #{(connection_names - established_connection_name).to_a.join(', ')} is down"
    end
  end
end
