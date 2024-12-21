+++
toc = true
hideReply = true
title = "Network Sockets"
author = "Lorenzo Drumond"
date = "2024-03-12T00:18:01"
tags = ["internet",  "computer_science",  "programming",  "socket",  "address",  "network",  "web"]
+++


A network socket is a software structure within a network node of a computer network that serves as an endpoint for sending and receiving data across the network.

The API for the network protocol stack creates a `handle` for each socket created by an application, known as `socket descriptor`. In Unix, this descriptor is a type of [file-descriptors](/wiki/file-descriptors/). It is stored by the process for use with every read and write operation on the communication channel.

At the time of creation with the API, a network socket is bound to the combination of a type of network protocol to be used, a network address of the host, and port number.

An application can communicate with a remote process by exchanging data with TCP/IP by knowing the combination of protocol type, IP address and port number. This combination is often known as a `socket address`. The remote process establishes a network socket in its own instance of the protocol stack and uses the networking API to connect to the application, presenting its own socket address for use by the application.

## References
- https://en.wikipedia.org/wiki/Network_socket
- [differences-between-unix-domain-sockets-and-network-sockets](/wiki/differences-between-unix-domain-sockets-and-network-sockets/)
