require 'socket'

local_socket = Socket.new(:INET, :STREAM)
local_addr = Socket.pack_sockaddr_in(4481, '127.0.0.1')
local_socket.bind(local_addr)

any_socket = Socket.new(:INET, :STREAM)
any_addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')
any_socket.bind(any_addr)

error_socket = Socket.new(:INET, :STREAM)
error_socket = Socket.pack_sockaddr_in(4481, '1.2.3.4')
error_socket.bind(error_socket)