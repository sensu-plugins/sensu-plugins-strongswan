require_relative './spec_helper.rb'
require_relative '../bin/metrics-strongswan-connection'
require_relative './fixtures.rb'

require 'sensu-plugin/metric/cli'

# rubocop:disable Style/ClassVars

class MetricsStrongswanStrongswanConnection
  attr_reader :result

  at_exit do
    @@autorun = false
  end

  def run_ipsec_statusall
    @result = {}
    ipsec_statusall_response
  end

  def output(*args)
    @result[args[0]] = args[1]
  end

  def critical(*); end

  def warning(*); end

  def ok(*); end

  def unknown(*); end
end

# rubocop:enable Style/ClassVars

describe 'MetricsStrongswanStrongswanConnection' do
  before do
    @default_parameters = '--scheme=test --connection=OVHEU-to-THRU'
    @metrics = MetricsStrongswanStrongswanConnection.new @default_parameters.split(' ')
  end

  describe '#run' do
    it 'tests that a metrics are ok' do
      @metrics.run
      expect(@metrics.result['test.OVHEU-to-THRU.bytes_i']).equal? '1'
      expect(@metrics.result['test.OVHEU-to-THRU.bytes_o']).equal? '1986502'
    end
  end
end
