# 9. Uploading Files

|本期版本|上期版本|
|:---:|:---:|
|`Fri Jul  7 20:44:54 CST 2023` |


## Message Structure


```bash
nc -l localhost 4321
```

```

curl -H "Content-Type: application/octet-stream" --data-binary @file.txt http://localhost:4567/upload/a_file.txt
```