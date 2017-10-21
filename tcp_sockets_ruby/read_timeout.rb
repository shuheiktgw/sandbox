require 'socket'
require 'timeout'

timeout = 5

Socket.tcp_server_loop(4481) do |connection|
  begin
    connection.read_nonblock(4096)
  rescue Errno::EAGAIN
    if IO.select([connection], nil, nil, timeout)
      retry
    else
      raise Timeout::Error
    end
  end

  connection.close
end
