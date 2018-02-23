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

# check strongswan connection status
class CheckStrongswanConnection < Sensu::Plugin::Check::CLI
  option :connection,
         description: 'Connection name to check',
         short: '-c NAME',
         long: '--connection NAME',
         required: true

  def run
    output = `ipsec statusall #{config[:connection]}`
    if output.include?('INSTALLED, TUNNEL,')
      ok "the connection #{config[:connection]} is up"
    elsif !output.include?(config[:connection])
      warning "the connection #{config[:connection]} doesn't exist"
    else
      critical "the connection #{config[:connection]} is down"
    end
  end
end
