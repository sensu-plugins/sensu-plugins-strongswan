#! /usr/bin/env ruby
#
#   check-strongswan.rb
#
# DESCRIPTION:
#   This plugin checks the health of a Strongswan VPN server
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
#   check-strongswan.rb
#
# NOTES:
#   This plugin should be executed as root using sudo
#
# LICENSE:
#   Copyright Eric Heydrick <eheydrick@gmail.com>
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

require 'sensu-plugin/check/cli'
require 'English'

# check strongswan status
class CheckStrongswan < Sensu::Plugin::Check::CLI
  option :warn_only,
         description: 'Warn instead of critical if problems are found',
         short: '-w',
         long: '--warn-only',
         default: false

  def run_ipsec_status
    `ipsec status`
    $CHILD_STATUS
  end

  def run
    ipsec_status = run_ipsec_status

    case ipsec_status
    when 0
      ok 'Strongswan is accepting connections'
    when 1..3
      if config[:warn_only]
        warning 'Strongswan is not running'
      else
        critical 'Strongswan is not running'
      end
    else
      unknown 'Unable to check Strongswan status'
    end
  end
end
