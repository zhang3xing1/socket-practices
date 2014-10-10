require 'socket'

server = Socket.new(:INET, :STREAM)
addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')
server.bind(addr)
server.listen(128)

connection, _ = server.accept

copy = connection.dup

# close copies of the connection
connection.shutdown

# close the connection
connection.close