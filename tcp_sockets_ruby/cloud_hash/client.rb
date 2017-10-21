require 'socket'

module CloudHash
  class Client
    def self.get(key)
      request "GET #{key}"
    end

    def self.set(key, value)
      request "SET #{key} #{value}"
    end

    def self.request(string)
      @client = TCPSocket.new('localhost', 4481)
      @client.write(string)

      @client.close_write
      @client.read
    end
  end
end

puts CloudHash::Client.set 'prez', 'banana'
puts CloudHash::Client.get 'prez'
puts CloudHash::Client.get 'vp'
