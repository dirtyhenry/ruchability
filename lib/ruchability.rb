require "ruchability/version"
require 'net/http'
require 'benchmark'
require 'date'

module Ruchability

  class Reacher

    # 
    def reach host = 'www.google.com', port = 80, open_timeout = 5
      puts "Testing with #{host} on port #{port}"
      begin
        res = { version: Ruchability::VERSION, date: DateTime.now.to_s, host: host, port: port }
        response = nil
        bm = Benchmark.measure do
          Net::HTTP.start(host, port, nil, nil, nil, nil, { open_timeout: open_timeout } ) do |http|
            response = http.head('/')
          end
        end
        res[:test] = { status: 0, response_code: response.code, total_time: bm.total, real_time: bm.real }
      rescue => e
        res[:test] = { status: 1, error: e }
      end
      puts "#{res}"
      res
    end
  
  end
  
  class AgentFactory
    def xml
    end
  end
end
