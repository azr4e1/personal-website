+++
title = "cgroups"
author = "Lorenzo Drumond"
date = "2023-12-25T17:47:43"
tags = ["virtualization",  "container",  "computer_science",  "virtual_machine",  "VM",  "linux",  "kernel",  "resource",  "process"]
+++


A control group (cgroup) is a Linux kernel feature that limits, accounts for, and isolates the resource usage (CPU, memory, disk I/O, network, and so on) of a collection of processes. They provide the following features:

- resource limits
- prioritazation
- accounting/monitoring
- control

By default, the operating system terminates a process when it exceeds a resource limit defined by its cgroup.

# References
- https://www.nginx.com/blog/what-are-namespaces-cgroups-how-do-they-work/

Next -> [cgroups-vs-namespaces](/wiki/cgroups-vs-namespaces/)
