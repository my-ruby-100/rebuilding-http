require_relative 'lib/rebuilding_http.rb'
include RHTTP

server = TCPServer.new 4321

loop do
  client = server.accept
  req = RHTTP.read_request(client)
  puts req
  client.write HELLO_WORLD_RESPONSE
  client.close
rescue
  puts "Read error! Continuing. #{$!.inspect}"
end