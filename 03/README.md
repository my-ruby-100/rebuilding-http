# 3. A Quick Response

|本期版本|上期版本|
|:---:|:---:|
`Wed Mar 12 10:00:43 CST 2025` | `Fri Jul  7 12:15:54 CST 2023`

## What’s In a Response?

* The lines with `>` are what curl sent to the server
* The lines with `<` are the response that the server sends back

## A Less-Canned Response

> `\n` 已经通过换行带上了

```ruby
rsp = <<TEXT
HTTP/1.1 200 OK\r
Content-Type: text/plain\r
\r
Hello World!
TEXT

puts rsp.inspect
```

## When Bad Things Happen to Good Servers

> 容错处理: 解析不正确的请求

```bash
nc localhost 4321
GET htetrejbreewjrnlkjke
```


## Exercises

**Exercise Two: Overriding Headers**

```ruby
Time.now.httpdate
```

**Exercise Three: the Browser**

* `favicon.ico`