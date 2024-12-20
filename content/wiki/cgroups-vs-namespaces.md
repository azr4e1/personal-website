+++
toc = true
title = "cgroups VS namespaces"
author = "Lorenzo Drumond"
date = "2023-12-25T17:54:54"
tags = ["virtualization",  "container",  "computer_science",  "virtual_machine",  "VM",  "linux",  "kernel",  "resource",  "process"]
+++


- __cgroups__ ([cgroups](/wiki/cgroups/)): control groups provide a mechanism for aggregating/partitioning sets of tasks, and all their future children, into hierarchical groups with specialized behaviour. I.e.: it limits how much resources you can use for each group.
- __namespaces__ ([linux-namespaces](/wiki/linux-namespaces/)): wraps a global system resource in an abstraction that makes it appear to the processes within the namespace that they have their own isolated instance of the global resource. I.e.: it limits what the processes in a namespace can see.

Cgroups involve resource metering and limiting:
- memory
- CPU
- block I/O
- network

Namespaces provide processes with their own view of the system:
- pid
- net
- mnt
- uts
- ipc
- user

In other words, if you want to create two containers, each with limited amount of computer resources allocated, you can:
- create two pid (and other) namespaces, whose processes will think they are the only ones using the resources and won't be able to see the processes in the other namespace.
- create two separate cgroups with the specified limits, and add the processes of a namespace to one cgroup, and the processes of the other namespace to the other cgroup.

Namespaces and cgroups are the key technologies behind containers like Docker and Podman.

## References
- https://stackoverflow.com/questions/34820558/difference-between-cgroups-and-namespaces
