+++
toc = true
hideReply = true
title = "Authentication"
author = "Lorenzo Drumond"
date = "2024-07-03T11:32:23"
tags = ["authentication",  "integrity",  "cryptography",  "basics",  "authorisation",  "authenticity",  "auditing",  "confidentiality"]
+++



Authentication asks the question, “who am I talking to?”; it attempts to verify the identity of some party. Passwords are one means of authentication; they aren’t a strong authentication mechanism because anyone who knows the password (whether because they chose it, were given it, or guessed it) will be authenticated. Multifactor authentication attempts to provide a stronger basis for assurance of an identity, and is based on three factors:

- Something you know (such as a password)
- Something you have (such as an authentication token of some kind)
- Something you are (such as biometrics)

The most common multifactor authentication configuration found in common use is two-factor employing the first two factors. A user might be required to enter both their password and a time-based one-time password (such as with TOTP) from an app on their phone. The assumption here is that the key used to generate the TOTP is only present on the authenticator (i.e. the mail provider) and the user’s phone, and that the user’s phone hasn’t been compromise or the key taken from it. Both sides share the key for this one-time password (OTP), and they do not have to communicate any additional information after setup to verify the password.

This is in contrast with two-step verification; an example is an SMS code sent to the phone. The user and server have to communicate, albeit over a different channel than the browser, to share this code. This still provides a channel for intercepting the code.

## References
- [cryptographic-glossary](/wiki/cryptographic-glossary/)
- [authentication](/wiki/authentication/)
- [authorisation](/wiki/authorisation/)
- [auditing](/wiki/auditing/)

Next -> [authorisation](/wiki/authorisation/)
