require 'socket'

HELLO_WORLD_RESPONSE = <<TEXT
HTTP/1.1 200 OK
Content-Type: text/plain

Hello From a Library, World!
TEXT

module RHTTP
  def read_request(sock)
    out = ""
    loop do
      line = sock.gets
      out << line.chomp << "\n"
      return(out) if line.strip == ""
    end
  end

  def get_request(sock)
    req_text = read_request(sock)

    RHTTP::Request.new(req_text)
  end
end


class RHTTP::Request
  attr_reader :method
  attr_reader :url
  attr_reader :http_version

  attr_reader :headers

  # "GET / HTTP/1.1\nHost: localhost:4321\nUser-Agent: curl/8.4.0\nAccept: */*\n\n"
  def initialize(text)
      # binding.irb
      lines = text.split %r{\r\n|\n\r|\r|\n}
      @method, @url, rest = lines[0].split(/\s/, 3)
      if rest =~ /HTTP\/(\d+)\.(\d_)/
        @http_version = "#{$1}.#{$2}"
      end
      @headers = lines[1..-1].join("\n")
  end

end