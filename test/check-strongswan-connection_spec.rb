require_relative './spec_helper.rb'
require_relative '../bin/check-strongswan-connection'
require_relative './fixtures.rb'

require 'sensu-plugin/metric/cli'

# rubocop:disable Style/ClassVars

class CheckStrongswanConnection
  attr_reader :result

  at_exit do
    @@autorun = false
  end

  def run_ipsec_statusall
    @result = {}
    if config[:connection]
      ipsec_statusall_response
    else
      ipsec_statusall_for_all_connection_with_down_connection
    end
  end

  def critical(*args)
    @result[:critical] = args[0]
  end

  def warning(*args)
    @result[:warning] = args[0]
  end

  def ok(*args)
    @result[:ok] = args[0]
  end

  def unknown(*); end
end

# rubocop:enable Style/ClassVars

describe 'MetricsStrongswanStrongswanConnection' do
  describe 'with connection name' do
    before do
      @default_parameters = '--connection=OVHEU-to-THRU'
      @metrics = CheckStrongswanConnection.new(@default_parameters.split(' '))
    end

    describe '#run' do
      it 'tests that a metrics are ok' do
        @metrics.run
        expect(@metrics.result[:ok]).to eq 'the connection(s) OVHEU-to-THRU is up'
      end
    end
  end

  describe 'for all connections' do
    before do
      @default_parameters = ''
      @metrics = CheckStrongswanConnection.new(@default_parameters.split(' '))
    end

    describe '#run' do
      it 'tests that a metrics are ok' do
        @metrics.run
        expect(@metrics.result[:critical]).to eq 'the connection OVHEU-to-EQXPA3, OVHEU-to-THRU is down'
      end
    end
  end
end
