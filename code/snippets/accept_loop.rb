require 'socket'

server = TCPServer.new(4481)

Socket.accept_loop(server) do |connection|
	# deal with connection

	connection.close
end