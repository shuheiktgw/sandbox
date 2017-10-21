require 'socket'

one_kb = 1024

client = TCPSocket.new('localhost', 4481)
client.write('gekko')
client.close
