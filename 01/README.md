# 1. Listen, Connect, Read, Write

|本期版本|上期版本
|:---:|:---:
`Wed Mar 12 00:03:22 CST 2025` | `Fri Jul  7 10:58:05 CST 2023`


## Wait, What’s TCP/IP?

* TCP is a stream-based protocol

## A Tiny Server That’s Mostly Fine

```bash
curl -v http://localhost:4321
```

## A Little Vocabulary

* `Request` / `Response`

## What’s Still Wrong?

* `client.gets` to read, so we only got one line

## What’s Fine But Weird?

* `\n`、`\r\n`

## Exercises

**Exercise One: HTTP Request Methods**

```bash
curl -v -X DISCO http://localhost:4321/FEVER
```

**Exercise Three: Testing**

* `fork`、`Thread.new`
* <https://github.com/noahgibbs/testing_rebuilding_http>