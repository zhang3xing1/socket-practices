require 'socket'

servers = Socket.tcp_server_sockets(4481)

Socket.accept_loop(servers) do |connection|
	# deal with connection

	connection.close
end