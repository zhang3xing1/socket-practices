require 'socket'

# only avaiable in local
local_socket = Socket.new(:INET, :STREAM)
local_addr = Socket.pack_sockaddr_in(4481, '127.0.0.1')
local_socket.bind(local_addr)

# listen any client request
any_socket = Socket.new(:INET, :STREAM)
any_addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')
any_socket.bind(any_addr)

# binding wrong sockets
err_socket = Socket.new(:INET, :STREAM)
err_addr = Socket.pack_sockaddr_in(4481, '1.2.3.4')
err_socket.bind(err_addr)