#! /usr/bin/env ruby
#
#  metrics-strongswan-statusall.rb
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
#   metrics-strongswan-connection.rb
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
class MetricsStrongswanStrongswanConnection < Sensu::Plugin::Metric::CLI::Graphite
  option :scheme,
         description: 'Metric naming scheme, text to prepend to metric',
         short: '-s SCHEME',
         long: '--scheme SCHEME',
         default: "#{Socket.gethostname}.strongswan"

  option :connection,
         description: 'Connection name to check',
         short: '-c NAME',
         long: '--connection NAME'

  def run_ipsec_statusall
    stdout, result = Open3.capture2("ipsec statusall #{config[:connection]}")
    unknown 'Unable to get Strongswan statusall' unless result.success?
    stdout
  end

  def run
    ipsec_status = run_ipsec_statusall

    found = false
    ipsec_status.each_line do |line|
      result = line.match(/[[:space:]]*(?<name>.*?)\{.* (?<bytes_i>\d+)\ bytes_i.*\ (?<bytes_o>\d+)\ bytes_o/)
      next unless result

      found = true
      output "#{config[:scheme]}.#{result[:name]}.bytes_i", result[:bytes_i]
      output "#{config[:scheme]}.#{result[:name]}.bytes_o", result[:bytes_o]
    end
    if found
      ok
    else
      critical('Not found')
    end
  end
end
