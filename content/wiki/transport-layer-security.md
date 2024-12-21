+++
toc = true
hideReply = true
title = "Transport Layer Security"
author = "Lorenzo Drumond"
date = "2024-03-21T23:59:53"
tags = ["protocol",  "internet",  "layer",  "encryption",  "computer_science",  "security",  "web",  "transport",  "tls"]
+++


Transport Layer Security, or TLS, is a widely adopted security protocol designed to facilitate privacy and data security for communications over the Internet. A primary use case of TLS is encrypting the communication between web applications and servers, such as web browsers loading a website. TLS can also be used to encrypt other communications such as email, messaging, and voice over IP (VoIP).

TLS evolved from a previous encryption protocol called Secure Sockets Layer (SSL), which was developed by Netscape. TLS version 1.0 actually began development as SSL version 3.1, but the name of the protocol was changed before publication in order to indicate that it was no longer associated with Netscape. Because of this history, the terms TLS and SSL are sometimes used interchangeably.

HTTPS is an implementation of TLS encryption on top of the HTTP protocol, which is used by all websites as well as some other web services. Any website that uses HTTPS is therefore employing TLS encryption.

TLS guarantees:

1. Encryption: hides the data being transferred from third parties
2. Authentication: ensures that the parties exchanging the information are who they claim to be
3. Integrity: verifies that the data has not been forged.

## References
- [what-is-http](/wiki/what-is-http/)
- https://www.cloudflare.com/en-gb/learning/ssl/transport-layer-security-tls/

Next -> [tls-certificate](/wiki/tls-certificate/)

Next -> [how-does-tls-work](/wiki/how-does-tls-work/)
