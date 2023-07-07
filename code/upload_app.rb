require "sinatra"

post "/upload/:f" do
  File.open(params["f"], "w") do |f|
    request.body.rewind
    f.write(request.body.read)
  end
  "OK\n"
end