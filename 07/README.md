# 7. HTTP and Rack

|本期版本|上期版本|
|:---:|:---:|
|`Fri Jul  7 19:26:43 CST 2023` |

## Getting Support

* <https://github.com/jordansissel/ruby-ftw>


## What's Rack Again?


* `rackup`、`Rack::Builder`

## Where Does Setup Happen?

* `lib/rack/handler/servername.rb`

```bash
bundle exec ruby sin_app.rb
```

> `config.ru`

```bash
bundle exec rackup -s blue_eyes
```

## Exercises

**Exercise One: BlueEyes on Rails**

```bash
rails server -u blue_eyes
```


## Ref

* [`StringIO`](https://ruby-doc.org/3.1.4/exts/stringio/StringIO.html)