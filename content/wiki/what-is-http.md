+++
toc = true
hideReply = true
title = "What is HTTP"
author = "Lorenzo Drumond"
date = "2024-03-17T17:47:03"
tags = ["what",  "HTTP",  "code",  "exchange",  "web",  "protocol",  "hypertext",  "server",  "internet",  "network",  "HTML",  "communication",  "node",  "header"]
+++


HTTP is a protocol for fetching resources such as HTML documents. It is the foundation of any data exchange on the Web and it is a client-server protocol, which means requests are initiated by the recipient, usually the Web browser. A complete document is reconstructed from the different sub-documents fetched, for instance, text, layout description, images, videos, scripts, and more.

Clients and servers communicate by exchanging individual messages (as opposed to a stream of data). The messages sent by the client, usually a Web browser, are called requests and the messages sent by the server as an answer are called responses.

HTTP is a client-server protocol: requests are sent by one entity, the user-agent (or a proxy on behalf of it). Most of the time the user-agent is a Web browser, but it can be anything, for example, a robot that crawls the Web to populate and maintain a search engine index.

Each individual request is sent to a server, which handles it and provides an answer called the response. Between the client and the server there are numerous entities, collectively called proxies, which perform different operations and act as gateways or caches, for example.

## Client
The user-agent is any tool that acts on behalf of the user. This role is primarily performed by the Web browser, but it may also be performed by programs used by engineers and Web developers to debug their applications.

 The browser is always the entity initiating the request. It is never the server (though some mechanisms have been added over the years to simulate server-initiated messages).

To display a Web page, the browser sends an original request to fetch the HTML document that represents the page. It then parses this file, making additional requests corresponding to execution scripts, layout information (CSS) to display, and sub-resources contained within the page (usually images and videos). The Web browser then combines these resources to present the complete document, the Web page. Scripts executed by the browser can fetch more resources in later phases and the browser updates the Web page accordingly.

## Server
On the opposite side of the communication channel is the server, which serves the document as requested by the client. A server appears as only a single machine virtually; but it may actually be a collection of servers sharing the load (load balancing), or other software (such as caches, a database server, or e-commerce servers), totally or partially generating the document on demand.



HTTP is:

- simple: v1 is designed to be human readable. V2 is more complex as it encapsulates the messafe into binary frames
- extensible: headers allow to extend functionality
- stateless, but not sessionless: there is no link between two requests, however the combined use of cookies and headers allow for stateful sessions.

With the use of headers, HTTP can control:

- caching
- relaxing the origin constraints
- authentication
- proxy and tunnelling
- sessions

## References
- https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview

Next -> [http-flow](/wiki/http-flow/)

Next -> [http-status-codes](/wiki/http-status-codes/)

Next -> [http-methods](/wiki/http-methods/)
