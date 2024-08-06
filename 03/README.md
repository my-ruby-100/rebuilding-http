# 3. A Quick Response

|本期版本|上期版本|
|:---:|:---:|
`Tue Aug  6 14:45:41 CST 2024` | `Fri Jul  7 12:15:54 CST 2023`

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


```bash
nc localhost 4321
GET htetrejbreewjrnlkjke
```


## Exercises

**Exercise Two: Overriding Headers**

```ruby
Time.now.httpdate
```