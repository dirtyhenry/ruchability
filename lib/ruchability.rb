require "ruchability/version"

module Ruchability

  class Reacher

    # 
    def reach host = 'www.google.com', port = 80, open_timeout = 5
      puts "Testing with #{host} on port #{port}"
      begin
        response = nil
        now = DateTime.now
        bm = Benchmark.measure do
          Net::HTTP.start(host, port, nil, nil, nil, nil, { open_timeout: open_timeout } ) do |http|
            response = http.head('/')
          end
        end
        res = { date: now, status: 'ok', response_code: response.code, total_time: bm.total, real_time: bm.real }
      rescue => e
        res = { date: now, status: 'nok', error: e }
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
