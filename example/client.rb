require 'socket'

hostname = 'localhost'
port = 4200


20.times do
	s = TCPSocket.open(hostname, port)

	while line = s.gets
		puts line.chop
	end

	s.close
end
