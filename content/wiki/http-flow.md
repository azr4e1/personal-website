+++
title = "HTTP flow"
author = "Lorenzo Drumond"
date = "2024-03-18T00:56:34"
tags = ["what",  "HTTP",  "code",  "exchange",  "web",  "protocol",  "hypertext",  "server",  "internet",  "network",  "HTML",  "flow",  "communication",  "node",  "header"]
+++


# HTTP flow
When a client wants to communicate with a server, either the final server or an intermediate proxy, performs the following steps:

1. Open a TCP connection
2. Send a HTTP message
3. Read the response sent by the server
4. Close or reuse the connection for further requests.

If HTTP pipelining is activated, several requests can be sent without waiting for the first response to be fully received.

# References
- https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview

Next -> [example-of-http1-messages](/wiki/example-of-http1-messages/)
