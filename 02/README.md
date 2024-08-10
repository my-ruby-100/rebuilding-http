# 2. Reading a Request

|本期版本|上期版本|
|:---:|:---:|
`Fri Aug  9 12:05:42 CST 2024` | `Fri Jul  7 11:53:06 CST 2023`

## TCP is Not Our Friend Here

* uses a separator: two newlines in a row
* 一行中有两个换行，代表请求结束


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

## Ref

* [`String#strip`](https://www.rubydoc.info/stdlib/core/String:strip)
* [`String#chomp`](https://www.rubydoc.info/stdlib/core/String:chomp)