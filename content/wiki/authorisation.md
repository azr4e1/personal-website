+++
title = "Authorisation"
author = "Lorenzo Drumond"
date = "2024-07-03T11:33:03"
tags = ["authentication",  "integrity",  "cryptography",  "basics",  "authorisation",  "authenticity",  "auditing",  "confidentiality"]
+++



Authorisation asks the question, “should you be doing this?” Authorisation relies on an access control mechanism of some kind. This might be as simple as an access control list, where the system has a list of parties that should have access to a resource or should be allowed to perform some operation. The Unix security model uses a set of access control lists for reading, writing, and executing by the owner, the group the resource belongs to, and the world. It employs “discretionary access control”: a user can explicitly change the values of those access control lists, giving other users and groups permission at their discretion. A mandatory access control model (such as provided by SELinux or AppArmor) operates on security levels or labels; each label is given a set of capabilities. Users or processes are given a label or security level, and they can only operate within the confines of the permitted capabilities.

As an example, a user might create a text file and opt to make it world-readable in the DAC model: any process or user can now access it. In the MAC model, access to that file would be restricted by label. If a process or user doesn’t have permissions based on their label, they cannot access it, and the original user simply cannot share the text file in this way. The labels are assigned by an administrator or security officer, and the user cannot change this. Access control is no longer at the user’s discretion, but mandatory.

An alternative to access control lists is the role-based access control security model is role-based security. On Unix systems, root has full control over the system; in a role-based system, this control is split among several roles, each of which has the minimum set of permissions to carry out that role. This model is also more fine grained that an access control list in that it can specify grant or permissions for specific operations.

# References
- [cryptographic-glossary](/wiki/cryptographic-glossary/)
- [authentication](/wiki/authentication/)
- [authorisation](/wiki/authorisation/)
- [auditing](/wiki/auditing/)

Next -> [auditing](/wiki/auditing/)
