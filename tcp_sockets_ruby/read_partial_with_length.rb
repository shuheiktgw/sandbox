require 'socket'

one_hundread_kb = 1024 * 100

Socket.tcp_server_loop(4481) do |connection|
  begin
    while data = connection.readpartial(one_hundread_kb) do
      puts data
    end

  rescue EOFError
  end

  connection.close
end
