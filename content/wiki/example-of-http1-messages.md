+++
title = "Example of HTTP/1 messages"
author = "Lorenzo Drumond"
date = "2024-03-18T00:58:52"
tags = ["what",  "HTTP",  "code",  "exchange",  "web",  "protocol",  "hypertext",  "server",  "internet",  "network",  "HTML",  "flow",  "communication",  "node",  "header"]
+++


# Example of HTTP/1 messages
Request:

```curl
GET / HTTP/1.1
Host: developer.mozilla.org
Accept-Language: fr
```

Response:

```curl
HTTP/1.1 200 OK
Date: Sat, 09 Oct 2010 14:28:02 GMT
Server: Apache
Last-Modified: Tue, 01 Dec 2009 20:18:22 GMT
ETag: "51142bc1-7449-479b075b2891b"
Accept-Ranges: bytes
Content-Length: 29769
Content-Type: text/html

<!DOCTYPE html>… (here come the 29769 bytes of the requested web page)
```

# References
- https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview

Next -> [anatomy-of-a-http-message](/wiki/anatomy-of-a-http-message/)
