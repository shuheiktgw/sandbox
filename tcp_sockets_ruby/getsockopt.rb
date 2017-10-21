require 'socket'

socket = TCPSocket.new('googol.com', 80)
opt = socket.getsockopt(Socket::SOL_SOCKET, Socket::SO_TYPE)

puts opt.int == Socket::SOCK_STREAM
puts opt.int == Socket::SOCK_DGRAM
