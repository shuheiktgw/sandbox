require 'socket'

servers = Socket.tcp_server_sockets(4481)
Socket.accept_loop(servers) do |connection|
  puts 'connection reveived!'
  connection.close
end
