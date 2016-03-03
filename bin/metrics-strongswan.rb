#! /usr/bin/env ruby
#
#   metrics-strongswan.rb
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
#   metrics-strongswan.rb
#
# NOTES:
#   This plugin should be executed as root using sudo
#
# LICENSE:
#   Copyright Eric Heydrick <eheydrick@gmail.com>
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

require 'sensu-plugin/metric/cli'
require 'open3'
require 'socket'

# Collect strongswan metrics
class StrongswanMetrics < Sensu::Plugin::Metric::CLI::Graphite
  option :scheme,
         description: 'Metric naming scheme, text to prepend to metric',
         short: '-s SCHEME',
         long: '--scheme SCHEME',
         default: "#{Socket.gethostname}.strongswan"

  def run_ipsec_status
    stdout, result = Open3.capture2('ipsec status')
    unknown 'Unable to get Strongswan status' unless result.success?
    stdout
  end

  def run
    ipsec_status = run_ipsec_status
    ipsec_status.each_line do |line|
      if line =~ /Security Associations/
        connections = ipsec_status.match(/Security Associations \((\d+)/)[1].to_i
        queue = ipsec_status.match(/Security Associations \(.*,\s*(\d+)/)[1].to_i
        output "#{config[:scheme]}.connections", connections
        output "#{config[:scheme]}.queue", queue
      end
      ok
    end
  end
end
