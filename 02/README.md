# 2. Reading a Request

|本期版本|上期版本|
|:---:|:---:|
`Wed Mar 12 00:52:31 CST 2025` | `Fri Jul  7 11:53:06 CST 2023`

## TCP is Not Our Friend Here

> 在仔细研究一下

```
"GET / HTTP/1.1\r\n"
"Host: 127.0.0.1:4321\r\n"
"User-Agent: curl/8.7.1\r\n"
"Accept: */*\r\n"
"\r\n"
```

* uses a separator: two newlines in a row
* 一行中有两个换行，代表请求结束


```ruby
# chomp vs strip
# # 用 `\n`、替换 `\r\n` 应该是后续方便在系统终端显示
out << line.chomp "\n"
return(out) if line.strip == ""
```

## Request Parsing

## Exercises

**Exercise One: Parameters**

```bash
# GET /?search=delicious HTTP/1.1
curl "http://localhost:4321/?search=delicious"
```

**Exercise Two: More Parameters**

* `-d` it will send a POST request, . But you can tell it not to with `--get`

```bash
# GET /my/url?page=7&search=delicious HTTP/1.1
curl --get -d search=delicious "http://localhost:4321/my/url?page=7"
```

**Exercise Three: Basic Authentication**

```bash
# Authorization: Basic Ym9ibzpib2JvcHdk
curl -u bobo:bobopwd --basic http://localhost:4321
```

## References

> The WWW Common Gateway Interface Version 1.1

* <https://github.com/ruby/webrick/blob/master/lib/webrick/httprequest.rb#L403C19-L403C43>

* `Webrick`、`Puma`、`Mongrel`

## Ref

* <https://github.com/noahgibbs/rebuilding_http>
* [`String#strip`](https://www.rubydoc.info/stdlib/core/String:strip)
* [`String#chomp`](https://www.rubydoc.info/stdlib/core/String:chomp)