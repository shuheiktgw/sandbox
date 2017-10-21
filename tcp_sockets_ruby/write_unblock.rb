require 'socket'

client = TCPSocket.new 'localhost', 4481
payload = 'Lorem ipsum' * 10000

writen = client.write_nonblock(payload)
writen < payload.size

puts payload.size
