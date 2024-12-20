+++
title = "Auditing"
author = "Lorenzo Drumond"
date = "2024-07-03T11:33:23"
tags = ["confidentiality",  "basics",  "integrity",  "auditing",  "authorisation",  "cryptography",  "authentication",  "authenticity"]
+++



Security efforts are for nought if no one is auditing the system to ensure it is operating correctly. An audit log should be available, and its access restricted to auditors, that records security events. The events recorded and the details present will vary based on the requirements of the system. Auditors should also be confident that the audit log will not have been tampered with.

An attacker that successfully authenticates may not leave any indication that the system is compromised. The only way to identify the compromise is through positive auditing: that is, auditing the record of events that succeeded. Whether the risk of such a compromise outweighs the need to maintain usage privacy needs to be considered.

# References
- [cryptographic-glossary](/wiki/cryptographic-glossary/)
- [authentication](/wiki/authentication/)
- [authorisation](/wiki/authorisation/)
- [auditing](/wiki/auditing/)

Next -> [security-model](/wiki/security-model/)
