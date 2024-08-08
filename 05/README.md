# 5. POST Requests

|本期版本|上期版本|
|:---:|:---:|
`Thu Aug  8 17:40:14 CST 2024` | `Fri Jul  7 13:42:41 CST 2023`


## What Do POSTs Look Like?

```bash
curl --trace-ascii logfile1.txt http://localhost:4321
curl --trace

# CR: \r、13(0x0d)
# LF: \n、10(0x0a)
```

## Send It By POST

```bash
curl -d p1=v1 -d p2=v2 http://localhost:4321/url
```

## Reading the POST

```
Content-Type: application/x-www-form-urlencoded
```


## First We Parse It


```ruby
Content-Length: 20
@body = s.read(len.to_i)
```

```ruby
# p1=v1&p2=v2
```

## Some Frame, Some Work

```ruby
request.instance_eval(&h)
```

```bash
ruby -I./lib -rblue_eyes/dsl little_form.rb
```



## But Can We Escape?

* 一个百分号和两个字母或数字，我们就认为这是一个十六进制的ASCII码


```
one+one # %2B
one%one # %25(37)

// 默认不转义: 增加  --data-urlencode 选项开启转义
curl --data-urlencode who=one%one http://localhost:4321
```

## Then Can We Un-Escape?

```ruby
str = str.gsub("+", " ")
```

> [转义字符及URI编码](https://www.cnblogs.com/kevin2chen/p/6478443.html)


## What's Different About POSTs?

* `non-idempotent`、`idempotent`
* `HTTP cache server`

## Exercises

**Exercise One: Curl Trace Files**

```bash
curl --data-urlencode who=one%one --trace-ascii 01.log http://localhost:4321
curl --data-urlencode who=one%one --trace 01.log http://localhost:4321
```

**Exercise Two: NetCat (nc)**

```bash
nc -l 4321
curl -d p1=v1 http://localhost:4321
```

## Ref

* [`String#hex`](https://www.rubydoc.info/stdlib/core/String:hex)
* [`Integer#chr`](https://www.rubydoc.info/stdlib/core/Integer:chr)
* [Get请求有大小限制？别再执迷不悟了！](https://www.jianshu.com/p/5c71fd6a6787)
