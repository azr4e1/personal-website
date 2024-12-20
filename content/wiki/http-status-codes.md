+++
toc = true
title = "HTTP status codes"
author = "Lorenzo Drumond"
date = "2024-03-18T01:18:08"
tags = ["code",  "status",  "HTTP",  "what",  "exchange",  "web",  "protocol",  "hypertext",  "server",  "internet",  "network",  "HTML",  "communication",  "node",  "header"]
+++


HTTP response status codes indicate whether a specific HTTP request has been successfully completed. They are grouped in five classes:

1. Informational responses (100 - 199)
2. Successful responses (200 - 299)
3. Redirection messages (300 - 399)
4. Client error responses (400 - 499)
5. Server error responses (500 - 599)

## Informational responses

- 100 -> Continue
- 101 -> Switching Protocols
- 102 -> Processing
- 103 -> Early Hints

## Successful responses

- 200 -> Ok
- 201 -> Created
- 202 -> Accepted
- 203 -> Non-Authorative Information
- 204 -> No content
- 205 -> Reset Content
- 206 -> Partial Content
- 207 -> Multi-Status
- 208 -> Already Reported
- 226 -> IM Used

## Redirection messages

- 300 -> Multiple Choices
- 301 -> Moved Permanently
- 302 -> Found
- 303 -> See Other
- 304 -> Not Modified
- 305 -> Use Proxy
- 306 (unused)
- 307 -> Temporary Redirect
- 308 -> Permanent Redirect

## Client error responses

- 400 -> Bad Request
- 401 -> Unauthorized
- 402 -> Payment Required
- 403 -> Forbidden
- 404 -> Not Found
- 405 -> Method Not Allowed
- 406 -> Not Acceptable
- 407 -> Proxy Authentication Required
- 408 -> Request Timeout
- 409 -> Conflict
- 410 -> Gone
- 411 -> Length Required
- 412 -> Precondition Failed
- 413 -> Payload Too Large
- 414 -> URI too long
- 415 -> Unsupported Media Type
- 416 -> Range Not Satisfiable
- 417 -> Expectation Failed
- 418 -> I'm a teapot
- 421 -> Misdirected Request
- 422 -> Unprocessable Content
- 423 -> Locked
- 424 -> Failed Dependency
- 425 -> Too Early
- 426 -> Upgrade Required
- 428 -> Precondition Required
- 429 -> Too Many Requests
- 431 -> Request Header Fields Too Large
- 451 -> Unavailable For Legal Reasons

## Server Error Responses

- 500 -> Internal Server Error
- 501 -> Not Implemented
- 502 -> Bad Gateway
- 503 -> Service Unavailable
- 504 -> Gateway Timeout
- 505 -> HTTP Version Not Supported
- 506 -> Variant Also Negotiates
- 507 -> Insufficient Storage
- 508 -> Loop Detected
- 510 -> Not Extended
- 511 -> Network Authentication Required


## References
- [http-flow](/wiki/http-flow/)
- https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
