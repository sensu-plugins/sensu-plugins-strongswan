
require_relative './spec_helper.rb'
require_relative '../bin/metrics-strongswan-listcounters.rb'
require_relative './fixtures.rb'

require 'sensu-plugin/metric/cli'

# rubocop:disable Style/ClassVars

class StrongswanListcountersMetrics
  attr_reader :result

  at_exit do
    @@autorun = false
  end

  def run_ipsec_listcounters
    @result = {}
    ipsec_listcounters_response
  end

  def output(*args)
    @result[args[0]] = args[1]
  end

  def critical(*); end

  def warning(*); end

  def ok(*); end

  def unknown(*); end
end

describe 'StrongswanListcountersMetrics' do
  before do
    @default_parameters = '--scheme=test'
    @metrics = StrongswanListcountersMetrics.new @default_parameters.split(' ')
  end

  describe '#run' do
    it 'tests that a metrics are ok' do
      @metrics.run
      expect(@metrics.result['test.ikeInitRekey']).equal? '1'
      expect(@metrics.result['test.ikeOutInfoRsp']).equal? '21'
    end
  end
end
