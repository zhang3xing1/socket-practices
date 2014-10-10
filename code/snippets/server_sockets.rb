require 'socket'

# both ipv4 and ipv6
servers = Socket.tcp_server_sockets(4481)