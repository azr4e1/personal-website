+++
toc = true
title = "Data lifetimes"
author = "Lorenzo Drumond"
date = "2024-07-03T12:51:33"
tags = ["integrity",  "PKI",  "confidentiality",  "errors",  "authorisation",  "cryptography",  "auditing",  "authenticity",  "basics",  "security",  "model",  "authentication"]
+++



Normally when we send encrypted messages, we prefer to do so using ephemeral message keys that are erased when communication is complete. This means that a message can’t be decrypted later using the same key it was encrypted with; while this is good for security, it means the burden of figuring out how to store messages (if that is a requirement) falls on the system. Some systems, such as Pond (https://pond.imperialviolet.org/), enforce a week lifetime for messages. This forced erasure of messages is considered the social norm; such factors will have to play into decisions about how to store decrypted messages and how long to store them.

There’s also the transition between data storage and message traffic: message traffic is encrypted with ephemeral keys that are never stored, while stored data needs to be encrypted with a long-term key. The system architecture should account for these different types of cryptography, and ensure that stored data is protected appropriately.

## References
- [how-does-tls-work](/wiki/how-does-tls-work/)

Next -> [cryptographic-agility](/wiki/cryptographic-agility/)
