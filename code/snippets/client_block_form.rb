require 'socket'

Socket.tcp('baidu.com', 80) do |connection|
	connection.write "Get / HTTP/1.1\r\n"
	connection.close
end