+++
title = "HTTP POST method"
author = "Lorenzo Drumond"
date = "2024-03-18T01:44:13"
tags = ["what",  "HTTP",  "post",  "code",  "get",  "exchange",  "methods",  "web",  "protocol",  "server",  "internet",  "hypertext",  "network",  "put",  "communication",  "HTML",  "node",  "header"]
+++


The HTTP POST method sends data to the server. The type of the body of the request is indicated by the Content-Type header.

The difference between PUT and POST is that PUT is idempotent: calling it once or several times successively has the same effect (that is no side effect), where successive identical POST may have additional effects, like passing an order several times.

Example:
```curl
POST /test HTTP/1.1
Host: foo.example
Content-Type: application/x-www-form-urlencoded
Content-Length: 27

field1=value1&field2=value2
```

# References
- [http-status-codes](/wiki/http-status-codes/)
- [http-flow](/wiki/http-flow/)
