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
    if config[:connection]
      ipsec_statusall_response
    else
      ipsec_statusall_for_all_connection
    end
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
  describe 'with connection name' do
    before do
      @default_parameters = '--scheme=test --connection=OVHEU-to-THRU'
      @metrics = MetricsStrongswanStrongswanConnection.new @default_parameters.split(' ')
    end

    describe '#run' do
      it 'tests that a metrics are ok' do
        @metrics.run
        expect(@metrics.result['test.OVHEU-to-THRU.bytes_i']).to eq '28511501'
        expect(@metrics.result['test.OVHEU-to-THRU.bytes_o']).to eq '1986502'
      end
    end
  end
end

describe 'MetricsStrongswanStrongswanConnection' do
  describe 'for all connections' do
    before do
      @default_parameters = '--scheme=test'
      @metrics = MetricsStrongswanStrongswanConnection.new @default_parameters.split(' ')
    end

    describe '#run' do
      it 'tests that a metrics are ok' do
        @metrics.run
        expect(@metrics.result['test.OVHEU-to-THRU.bytes_i']).to eq '8046042'
        expect(@metrics.result['test.OVHEU-to-THRU.bytes_o']).to eq '546577'

        expect(@metrics.result['test.OVHEU-to-PAR.bytes_i']).to eq '0'
        expect(@metrics.result['test.OVHEU-to-PAR.bytes_o']).to eq '0'

        expect(@metrics.result['test.OVHEU-to-EQXPA4.bytes_i']).to eq '9786795'
        expect(@metrics.result['test.OVHEU-to-EQXPA4.bytes_o']).to eq '661585'

        expect(@metrics.result['test.OVHEU-to-EQXPA3.bytes_i']).to eq '9452826'
        expect(@metrics.result['test.OVHEU-to-EQXPA3.bytes_o']).to eq '625165'
      end
    end
  end
end
