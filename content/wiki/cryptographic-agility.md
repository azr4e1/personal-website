+++
title = "Cryptographic agility"
author = "Lorenzo Drumond"
date = "2024-07-03T12:52:14"
tags = ["integrity",  "PKI",  "confidentiality",  "errors",  "authorisation",  "cryptography",  "auditing",  "authenticity",  "basics",  "security",  "model",  "authentication"]
+++



The more options a system has for picking the cryptography it uses, the greater the opportunity for making a cryptographic mistake. For this reason, we’ll avoid doing this here. Typically, we’ll prefer NaCl cryptography, which has a simple interface without any options, and it is efficient and secure. When designing a system, it helps to make a well-informed opinionated choice of the cryptography used. The property of cryptographic agility, or being able to switch the cryptography out, may be useful in recovering from a suspected failure. However, it may be prudent to step back and consider why the failure happened and incorporate that into future revisions.

# References

Next -> [symmetric-cryptography](/wiki/symmetric-cryptography/)
