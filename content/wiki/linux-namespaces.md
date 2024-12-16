+++
title = "Linux Namespaces"
author = "Lorenzo Drumond"
date = "2023-12-25T17:38:08"
tags = ["virtualization",  "container",  "computer_science",  "virtual_machine",  "VM",  "linux",  "kernel"]
+++


# Linux Namespaces
Namespaces are a feature of the Linux kernel that partitions kernel resources such that one set of processes sees one set of resources while another set of processes sees a different set of resources.

In other words, they isolate processes from each other, providing an isolation layer between system resources.

## Types of Namespaces
- User namespace: own set of user and group IDs. A process can have `root` within its user namespace but not in another
- Process ID namespace: assigns a set of PIDs to processes that are independent from the set of PIDs in other namespaces
- Network namespace: creates independent network stacks - private routing table, set of IP addresses, socket listing, connection tracking table, firewall, and other network‑related resources
- Mount namespace: independent list of mount points seen by the processes in the namespace
- Interprocess communication (IPC) namespace: own IPC resources, for example POSIX message queues
- UNIX Time-Sharing (UTS) namespace: allows a single system to appear to have different host and domain names to different processes

The command for creating new namespaces id `unshare`.

Namespaces are one of the technologies that containers are built on, used to enforce segregation of resources.

# References
- https://en.wikipedia.org/wiki/Linux_namespaces
- https://www.nginx.com/blog/what-are-namespaces-cgroups-how-do-they-work/

Next -> [cgroups](/wiki/cgroups/)

Next -> [cgroups-vs-namespaces](/wiki/cgroups-vs-namespaces/)
