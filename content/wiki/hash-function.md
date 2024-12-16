+++
title = "Hash Function"
author = "Lorenzo Drumond"
date = "2024-08-21T15:23:49"
tags = ["boot_dev",  "memory",  "hash",  "computer_science",  "data",  "search",  "function",  "programming",  "structure"]
+++


# Hash Function

A hash function is any function that can be used to map data of arbitrary size to fixed-size values, though there are some hash functions that support variable-length output. The values returned by a hash function are called hash values, hash codes, hash digests, digests, or simply hashes. The values are usually used to index a fixed-size table called a hash table. Use of a hash function to index a hash table is called hashing or scatter-storage addressing.

A cryptographic hash function generates a “fingerprint” of an input string. For example, if we were to hash the entire text of JRR Tolkien’s “The Lord of The Rings” series using the SHA 256 algorithm, we would get a 256-bit output unique to that book’s text. If we changed even a single letter in the book, the output hash would be wildly different.

It’s worth noting that the output of a hash is “almost unique” because there are a finite number of output strings. After all, the output of SHA-256 is always 256 bits long, which means it has a fixed size. The number of possible inputs, however, is infinite, meaning some inputs will hash to the same output. When this happens, it’s called a “collision”, and it is nearly impossible. After all, in SHA-256 there are 2^256 possible outputs.

Three main purposes of a hash function are:

- To scramble data deterministically
- To accept an input of arbitrary length and output a fixed-length result
- To manipulate data irreversibly. The input cannot be derived from the output

# References

- https://en.wikipedia.org/wiki/Hash_function
- https://blog.boot.dev/cryptography/how-sha-2-works-step-by-step-sha-256/

Next -> [trie-data-structure](/wiki/trie-data-structure/)
