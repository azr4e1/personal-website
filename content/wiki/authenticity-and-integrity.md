+++
toc = true
hideReply = true
title = "Authenticity and Integrity"
author = "Lorenzo Drumond"
date = "2024-07-03T14:24:01"
tags = ["authorisation",  "cryptography",  "PKI",  "basics",  "authenticity",  "confidentiality",  "auditing",  "errors",  "security",  "authentication",  "integrity",  "model",  "symmetric"]
+++



Authenticity and integrity
Why are the integrity and authenticity components required? One common thing that crops up when people try to build a secure system is that only the confidentiality aspect is used: the programmer will use just AES with some non-authenticated mode (like the CBC, OFB, or CTR modes). AES ciphertexts are malleable: they can be modified and the receiver is often none the wiser. In the context of an encrypted instant message or email or web page, it might seem this modification would become obvious. However, an attacker can exploit the different responses between invalid ciphertext (when decryption fails) and invalid message (the plaintext is wrong) to extract the key. Perhaps the most well-known such attack is the padding oracle attack. In other cases, the invalid plaintext might be used to exploit bugs in the message handler. This is especially problematic in systems that use encryption to secure messages intended for automated systems.

Appending an HMAC or using an authenticated mode (like GCM) requires that the attacker prove they have the key used to authenticate the message. Rejecting a message that fails the MAC reduces the possibility of an invalid message. It also means that an attacker that is just sending invalid data has their message dropped before even wasting processor time on decryption.

To effectively authenticate with an HMAC, the HMAC key should be a different key than the AES key. In this book, we use HMACs with AES, and we’ll append the HMAC key to the AES key for the full encryption or decryption key. For AES-256 in CBC or CTR mode with an HMAC-SHA-256, that means 32 bytes of AES key and 32 bytes of HMAC key for a total key size of 64 bytes; the choice of HMAC-SHA-256 is clarified in a later section.

There are several choices for how to apply a MAC. The right answer is to encrypt-then-MAC:

Encrypt-and-MAC: in this case, we would apply a MAC to the plaintext, then send the encrypted plaintext and MAC. In order to verify the MAC, the receiver has to decrypt the message; this still permits an attacker to submit modified ciphertexts with the same problems described earlier. This presents a surface for IND-CCA attacks.
MAC-then-encrypt: a MAC is applied and appended to the plaintext, and both are encrypted. Note that the receiver still has to decrypt the message, and the MAC can be modified by modifying the resulting ciphertext, which is a surface for IND-CCA attacks as well.
Encrypt-then-MAC: encrypt the message and append a MAC of the ciphertext. The receiver verifies the MAC, and does not proceed to decrypt if the MAC is invalid. This removes the IND-CCA surface.
Moxie Marlinspike’s Cryptographic Doom Principle [Moxie11] contains a more thorough discussion of this.

Always use either an authenticated mode (like GCM), or encrypt-then-MAC.

## References
