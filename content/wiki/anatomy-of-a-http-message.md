+++
toc = true
hideReply = true
title = "Anatomy of a HTTP message"
author = "Lorenzo Drumond"
date = "2024-03-18T01:00:46"
tags = ["what",  "HTTP",  "code",  "communication",  "web",  "protocol",  "hypertext",  "server",  "internet",  "network",  "header",  "flow",  "HTML",  "node",  "exchange"]
+++


HTTP messages, as defined in HTTP/1.1 and earlier, are human-readable. In HTTP/2, these messages are embedded into a binary structure, a frame, allowing optimizations like compression of headers and multiplexing.

There are two types of HTTP messages, requests and responses, each with its own format.

## Requests

```curl
GET / HTTP/1.1
Host: developer.mozilla.org
Accept-Language: fr
```

It consists of:

1. HTTP method, a verb like GET, POST etc [http-methods](/wiki/http-methods/) that defines the operation the client wants to perform.
2. The path of the resource to fetch; the URL of the resource stripped from elements that are obvious from context
3. The version of the HTTP protocol
4. Optional headers that convey additional information to the servers
5. A body for some methods like POST, similar to those in responses

## Responses

```curl
HTTP/1.1 200 OK
Date: Sat, 09 Oct 2019 14:28:02 GMT
Server: Apache
Last-Modified: Tue, 01 Dec 2009 20:18:22 GMT
ETag: "fjsdiog-ear34538-sdfkjtghwio"
Accept-Ranges: bytes
Content-Length: 29769
Content-Type: text/html
```

It consists of:

1. The version of the HTTP protocol they follow
2. A status code [http-status-codes](/wiki/http-status-codes/), indicating if the request was successful
3. A status message, a non-authoritative short description of the status code
4. HTTP headers, like those for requests
5. Optionally, a body containing the fetched resources

## References
- https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview
