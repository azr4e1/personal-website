+++
title = "HTTP methods"
author = "Lorenzo Drumond"
date = "2024-03-18T01:38:50"
tags = ["what",  "HTTP",  "code",  "get",  "post",  "web",  "methods",  "protocol",  "hypertext",  "server",  "internet",  "network",  "put",  "header",  "communication",  "HTML",  "node",  "exchange"]
+++


HTTP defines a set of request methods to indicate the desired action to be performed for a given resource. They are also referred to as _nouns_. A request method can be _safe_, _idempotent_, or _cacheable_.

- GET: this method request a representation of the specified resource. Requests using GET should only retrieve data.
- HEAD: this method asks for a response identical to a GET request, but without the response body
- POST: this method submits an entity to the specified resource, often causing a change in state or side effects on the server
- PUT: this method replaces all current representations of the target resources with the request payload
- DELETE: this method deletes the specified resource
- CONNECT: this method establishes a tunnel to the server identified by the target resource
- OPTIONS: this method describes the communication options for the target resource
- TRACE: this method performs a message loop-back test along the path to the target resource
- PATCH: this method applies partial modifications to a resource.

# References
- [http-status-codes](/wiki/http-status-codes/)
- [http-flow](/wiki/http-flow/)

Next -> [http-post-method](/wiki/http-post-method/)

Next -> [http-put-method](/wiki/http-put-method/)
