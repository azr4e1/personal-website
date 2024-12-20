+++
title = "On errors in cryptographic systems"
author = "Lorenzo Drumond"
date = "2024-07-03T11:54:07"
tags = ["security",  "model",  "authentication",  "integrity",  "cryptography",  "auditing",  "confidentiality",  "authenticity",  "authorisation",  "basics",  "errors"]
+++



The more information an attacker has about why a cryptographic operation failed, the better the chances that they will be able to break the system.

There are attacks, for example, that operate by distinguishing between decryption failures and padding failures.

One approach to mitigate this is to either signal an error using a bool or with a generic error value such as "encryption failed".

# References

Next -> [input-sanitisation](/wiki/input-sanitisation/)
