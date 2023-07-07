get '/' do
  <<FORM
<h1>Browser: #{headers['user-agent']}</h1>
<form action="/" method="post">
  <label for="who">who are you?</label>
  <input type="text" name="who" />
  <input type="submit" value="that's me!" />
</form>
FORM
end

post "/" do
    <<POST
  Hello, #{form_data["who"]}
  <pre>
    From data: #{form_data.inspect}
    Request headers: #{headers.inspect}
  </pre>
POST
  end