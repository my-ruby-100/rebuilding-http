require 'socket'

RESP = <<TEXT
HTTP/1.1 200 OK\r
Content-Type: text/plain\r

Hello World!
TEXT

server = TCPServer.new 4321
loop do
  client = server.accept
  puts "Got a connection!"
  puts client.gets.inspect
  client.write RESP
  client.close
end