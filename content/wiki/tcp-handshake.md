+++
title = "TCP handshake"
author = "Lorenzo Drumond"
date = "2024-03-21T23:53:44"
tags = ["web",  "transmission",  "handshake",  "protocol",  "reliable",  "network",  "internet",  "control",  "tcp",  "communication"]
+++


TCP protocol uses a three-way handshake to set up a TCP/IP connection over an IP based network.

The three messages transmitted by TCP are: SYN, SYN-ACK, and ACK (synchronize, synchronize-acknowledgment and acknowledge). This is done so that the two computers that want to pass information back and forth to each other can negotiate the parameters of the connection before transmitting data such as HTTP browser requests.

The host, generally the browser, sends a TCP SYNchronize packet to the server. The server receives the SYN and sends back a SYNchronize-ACKnowledgement. The host receives the server's SYN-ACK and sends an ACKnowledge. The server receives ACK and the TCP socket connection is established.

This handshake step happens after a DNS lookup and before the TLS handshake, when creating a secure connection. The connection can be terminated independently by each side of the connection via a four-way handshake.

# References
- [network-sockets](/wiki/network-sockets/)
- https://developer.mozilla.org/en-US/docs/Glossary/TCP_handshake
