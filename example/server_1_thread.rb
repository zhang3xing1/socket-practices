require 'socket'

server = TCPServer.open(4200)

loop { 
	client = server.accept
	client.puts(Time.now.to_f)
	client.puts "Closing the connection. Bye!"
	client.close
}