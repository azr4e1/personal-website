+++
title = "Unix Domain Sockets"
author = "Lorenzo Drumond"
date = "2024-03-12T00:04:36"
tags = ["computer_science",  "programming",  "linux",  "inter_process_communication",  "socket",  "unix"]
+++


A Unix Domain socket (UDS) or IPC socket (inter-process communication) is a data communication endpoint for exchanging data between processes executing on the same host operating system. It is also referred by its address family `AF_UNIX`

Differently from TCP/IP sockets, a UDS operates on a single machine. Listening sockets live in the filesystem hierarchy and access to them can be controlled by filesystem permission.

A process accepting connections on a Unix socket can determine the user ID of the process that connects.

The API for UDS is similar to that of an [network-sockets](/wiki/network-sockets/), but rather than using an underlying network protocol, all communication occurs entirely within the operating system kernel.

In addition to sending data, processes may send [file-descriptors](/wiki/file-descriptors/) across a Unix domain socket connection using the `sendmsg()` and `recvmsg()` system calls. This allows the sending processes to grant the receiving process access to a file descriptor for which the receiving process otherwise doesn't have access.

# References
- https://en.wikipedia.org/wiki/Unix_domain_socket
- https://serverfault.com/questions/124517/what-is-the-difference-between-unix-sockets-and-tcp-ip-sockets


Next -> [unix-domain-sockets-in-golang](/wiki/unix-domain-sockets-in-golang/)
