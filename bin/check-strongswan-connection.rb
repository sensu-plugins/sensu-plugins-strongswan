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
require 'timeout'

# check strongswan connection status
class CheckStrongswanConnection < Sensu::Plugin::Check::CLI
  option :connection,
         description: 'Connection name to check',
         short: '-c NAME',
         long: '--connection NAME',
         required: true

  def run
    pipe = IO.popen("ipsec statusall #{config[:connection]}")

    Timeout.timeout(1) do
      Process.wait(pipe.pid)
    end

    output = pipe.read
    if output.include?('INSTALLED, TUNNEL,')
      ok "the connection #{config[:connection]} is up"
    elsif !output.include?(config[:connection])
      warning "the connection #{config[:connection]} doesn't exist"
    else
      critical "the connection #{config[:connection]} is down"
    end
  rescue
    Process.kill(9, pipe.pid)
    unknown 'unable to retrieve the connection status'
  end
end
