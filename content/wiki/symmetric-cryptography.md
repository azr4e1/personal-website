+++
toc = true
title = "Symmetric Cryptography"
author = "Lorenzo Drumond"
date = "2024-07-03T12:53:02"
tags = ["integrity",  "errors",  "authentication",  "PKI",  "basics",  "auditing",  "authenticity",  "confidentiality",  "security",  "symmetric",  "authorisation",  "cryptography",  "model"]
+++



In Symmetric Cryptography, all parties share the same key. This is the easiest and fastest form of cryptography.

Fundamentally, the key used by a symmetric algorithm is a sequence of bytes that are used as the input to a transformation algorithm that operates on bits. Key distribution with symmetric cryptography is more difficult than with asymmetric cryptography as the transmission of sensitive key material requires a secure channel.

There are two components to symmetric encryption: the algorithm that provides confidentiality (which is a block or stream cipher), and the component that provides integrity and authenticity (the MAC algorithm). Most ciphers do not provide both in the same algorithm, but those that do are called Authenticated Encryption (AE), or Authenticated Encryption with Additional Data (AEAD), ciphers.

## References

Next -> [indistinguishability](/wiki/indistinguishability/)
