+++
title = "Indistinguishability"
author = "Lorenzo Drumond"
date = "2024-07-03T12:56:55"
tags = ["authorisation",  "cryptography",  "PKI",  "basics",  "authenticity",  "confidentiality",  "auditing",  "errors",  "security",  "authentication",  "integrity",  "model",  "symmetric"]
+++



One of the properties of a secure encryption system is that it provides indistinguishability. There are two particular kinds of indistinguishability that are relevant here: IND-CPA, or indistinguishability under a chosen plaintext attack, and IND-CCA, or indistinguishability under a chosen ciphertext attack.

# IND-CPA

In IND-CPA, the attacker sends a pair of messages that are the same length to the server to be encrypted. The server chooses one of the messages, encrypts it, and sends back the ciphertext. The attacker should not be able to determine which message was encrypted. This property maintains confidentiality. It’s useful to consider the requirement that messages be the same length: the length of an encrypted message is related to the length of the original message in most ciphers. That is, encrypting a message does not hide its length.

# IND-CCA

In IND-CCA, the attacker submits ciphertexts of its own choosing that the server decrypts. After some observations, the attacker submits two challenge ciphertexts and the server picks one at random to decrypt and send back to the attacker. The attacker should not be able to distinguish which ciphertext the plaintext corresponds to. This attack is often seen in symmetric security as a padding oracle attack, in which the encryption scheme used does not include a message authentication code (such as AES-CBC without an HMAC), and can allow the attacker to recover the key used for encryption. There are two variants of IND-CCA; the first (IND-CCA1) means that an attacker cannot submit new ciphertexts after the challenge is sent. The second (IND-CCA2, or adaptive CCA) allows the attacker to continue submitting ciphertexts after the challenge. This may seem like a trivial difference, but a system that is IND-CCA1 secure but not IND-CCA2 secure enables the padding oracle attack.

# References

Next -> [authenticity-and-integrity](/wiki/authenticity-and-integrity/)
