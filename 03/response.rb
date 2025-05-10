class Response

  def initialize(body,
    version: '1.1',
    status: 200,
    message: "OK",
    headers: {})

    @version = version
    @status = status
    @message = message
    @headers = headers
    @body = body
  end

  def to_s
# 需要返回\r\n: 其中\n已经通过换行实现了
    <<TEXT
HTTP/#{@version} #{@status} #{@message}\r
Content-Type: text/html\r
#{@headers.map{|k,v| "#{k}: #{v}"}.join("\r\n")}
\r
#{@body}
TEXT
  end
end


a = Response.new("Hello Response", 
  headers: {'Framework': "UltraCool 0.1"})

puts a.to_s