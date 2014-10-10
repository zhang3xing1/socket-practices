require 'socket'

Socket.tcp_server_loop(4481) do |connection|
	# deal with connection

	connection.close
	
end