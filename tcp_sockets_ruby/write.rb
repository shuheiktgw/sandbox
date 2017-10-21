require 'socket'

one_hundread_kb = 1024 * 100

Socket.tcp_server_loop(4481) do |connection|
  connection.write('Welcome!')
  connection.close
end
