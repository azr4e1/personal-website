+++
title = "Differences between Unix Domain Sockets and Network Sockets"
author = "Lorenzo Drumond"
date = "2024-03-12T00:18:39"
tags = ["TCP",  "internet",  "IP",  "unix",  "inter_process_communication",  "sockets",  "domain",  "network",  "stack",  "difference",  "web",  "hardware"]
+++


# Differences between Unix Domain Sockets and Network Sockets
A TCP/IP socket is used for communication across TCP/IP networks. A connected TCP socket is identified by the combination of local IP, local port, remote IP and remote port. A listening TCP socket is identified by local port and possibly local IP. As I understand it, at least on linux TCP/IP sockets always result in the generation and decoding of TCP/IP packets, even if the client and server are on the same machine.

A unix domain socket (sometimes shortened to unix socket) on the other hand operates on a single machine. Listening sockets live in the filesystem hierarchy and access to them can be controlled by filesystem permissions.

Furthermore a process accepting a connection on a Unix socket can determine the user ID of the process that connects. This can avoid the need for an authentication step. Rather than generating a password for your database server and including a copy of it in your webapp's code you can just tell the database server that the user running the webapp has access to the corresponding user account in the database.

# References
- https://serverfault.com/questions/124517/what-is-the-difference-between-unix-sockets-and-tcp-ip-sockets
