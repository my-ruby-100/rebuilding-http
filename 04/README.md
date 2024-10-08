# 4. A Framework

|本期版本|上期版本|
|:---:|:---:|
`Fri Aug  9 14:00:38 CST 2024` | `Fri Jul  7 12:58:54 CST 2023`

## Libraries, Ruby Style

```bash
bundle gem blue_eyes
```

## A Simple Server

* HTTP headers are case-insensitive

## A Lovely Little Microframework

* <https://sinatrarb.com/intro.html>


## The Main Object

* `self`

## In Which We Write a DSL

```bash
ruby -rname_of_require
```

```bash
at_exit
```

```bash
ruby -I./lib -rblue_eyes/dsl little_app.rb
```


## Wait, What Does It Do?

> [`slice`](https://ruby-doc.org/3.2.2/String.html#method-i-slice)

those are for a regular expression

```ruby
'no-frank'[/frank/]
'no-frank'.slice /frank/
```


## Ref

* <https://ruby-doc.org/3.2.2/Enumerable.html#method-i-find>