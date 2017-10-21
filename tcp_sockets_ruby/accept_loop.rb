require 'socket'

server = TCPServer.new(4481)
Socket.accept_loop(server) do |connection|
  connection.close
end
