+++
toc = true
title = "HTTP PUT method"
author = "Lorenzo Drumond"
date = "2024-03-18T01:46:43"
tags = ["what",  "HTTP",  "post",  "code",  "get",  "exchange",  "methods",  "web",  "protocol",  "server",  "internet",  "hypertext",  "network",  "put",  "HTML",  "communication",  "node",  "header"]
+++


The HTTP PUT request method creates a new resource or replaces a representation of the target resource with the request payload.

The difference between PUT and POST is that PUT is idempotent: calling it once or several times successively has the same effect (that is no side effect), whereas successive identical POST requests may have additional effects, akin to placing an order several times.

Example:
```curl
PUT /new.html HTTP/1.1
Host: example.com
Content-type: text/html
Content-length: 16

<p>New File</p>
```

If the target resource does not have a current representation and the PUT request successfully creates one, then the origin server must inform the user agent by sending a 201 (Created) response.

If the target resource does have a current representation and that representation is successfully modified in accordance with the state of the enclosed representation, then the origin server must send either a 200 (OK) or a 204 (No Content) response to indicate successful completion of the request.

## References
- [http-status-codes](/wiki/http-status-codes/)
- [http-flow](/wiki/http-flow/)
- [http-post-method](/wiki/http-post-method/)
