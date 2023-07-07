require 'time'
require_relative 'lib/rebuilding_http'
include RHTTP

server = TCPServer.new 4321

loop do
  client = server.accept
  req = RHTTP.get_request(client)
  puts req.inspect
  resp = RHTTP::Response.new("Hello Response!",
    headers: {'Framework': "UltraColl 0.1", "Date": Time.now.httpdate})
  client.write resp.to_s
  client.close

rescue
  puts "Read errors! #{$!.inspect}"
  next
end