+++
title = "Cryptography basics"
author = "Lorenzo Drumond"
date = "2024-07-03T11:16:38"
tags = ["authentication",  "integrity",  "cryptography",  "basics",  "authorisation",  "authenticity",  "auditing",  "confidentiality"]
+++


# Cryptography basics

The foundation of cryptographic security are the three goals of confidentiality, integrity, and authenticity.

- Confidentiality is the requirement that only the intended party can read a given message;
- Integrity is the requirement that a message’s contents cannot be tampered with;
- Authenticity is the requirement that the provenance (or origin) of a message can be trusted.

A cryptographic algorithm applies some transformations to data in order to achieve these goals, and various algorithms are applied to achieve different goals.

Security should provide authentication, authorisation, and auditing:
- [authentication](/wiki/authentication/) means that the system verifies the identity of parties interacting with the system;
- [authorisation](/wiki/authorisation/) verifies that they should be allowed to carry out this interaction;
- [auditing](/wiki/auditing/) creates a log of security events that can be verified and checked to ensure the system is providing security.

The end goal is some assurance that the system is secure.

# References
- [cryptographic-glossary](/wiki/cryptographic-glossary/)

Next -> [authentication](/wiki/authentication/)
