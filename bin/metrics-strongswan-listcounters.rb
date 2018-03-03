#! /usr/bin/env ruby
#
#  metrics-strongswan-listcounters.rb
#
# DESCRIPTION:
#   This plugin collects metrics from a Strongswan VPN server
#
# OUTPUT:
#   metric data
#
# PLATFORMS:
#   Linux
#
# DEPENDENCIES:
#   gem: sensu-plugin
#
# USAGE:
#   metrics-strongswan-listcounters.rb
#
# NOTES:
#   This plugin should be executed as root using sudo
#
# LICENSE:
#   Copyright Yuri Zubov <yury.zubau@gmail.com>
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

require 'sensu-plugin/metric/cli'
require 'open3'
require 'socket'

# Collect strongswan metrics
class StrongswanListcountersMetrics < Sensu::Plugin::Metric::CLI::Graphite
  option :scheme,
         description: 'Metric naming scheme, text to prepend to metric',
         short: '-s SCHEME',
         long: '--scheme SCHEME',
         default: "#{Socket.gethostname}.strongswan"

  option :connection,
         description: 'Connection name to check',
         short: '-c NAME',
         long: '--connection NAME'

  def run_ipsec_listcounters
    stdout, result = Open3.capture2("ipsec listcounters #{config[:connection]}")
    unknown 'Unable to get Strongswan listcounters' unless result.success?
    stdout
  end

  def run
    ipsec_status = run_ipsec_listcounters

    found = false
    ipsec_status.each_line do |line|
      result = line.match(/(?<key>\w+).* (?<value>\d+)/)
      if result
        found = true
        output "#{config[:scheme]}.#{result[:key]}", result[:value]
      end
    end
    if found
      ok
    else
      critical(ipsec_status)
    end
  end
end
