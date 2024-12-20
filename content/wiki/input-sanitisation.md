+++
title = "Input sanitisation"
author = "Lorenzo Drumond"
date = "2024-07-03T11:55:45"
tags = ["integrity",  "confidentiality",  "errors",  "authorisation",  "cryptography",  "auditing",  "authenticity",  "basics",  "security",  "model",  "authentication"]
+++



A secure system has to scrutinise its inputs and outputs carefully to ensure that they do not degrade security or provide a foothold for an attacker. It’s well understood in software engineering that input from the outside world must be sanitised; sanity checks should be conducted on the data and the system should refuse to process invalid data.

There are two ways to do this: blacklisting (a default allow) and whitelisting (a default deny).

# Blacklisting

Blacklisting is a reactive measure that involves responding to known bad inputs; a blacklisting system will always be reacting to new bad input it detects, perhaps via an attack.

# Whitelisting

Whitelisting decides on a set of correct inputs, and only permits those. It’s more work up front to determine what correct inputs look like, but it affords a higher assurance in the system. It can also be useful in testing assumptions about inputs: if valid input is routinely being hit by the whitelist, perhaps the assumptions about the incoming data looks like are wrong.

# References

Next -> [memory-randomness-and-clock-in-secure-systems](/wiki/memory-randomness-and-clock-in-secure-systems/)
