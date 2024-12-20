+++
toc = true
title = "Hypervisors"
author = "Lorenzo Drumond"
date = "2023-12-24T23:36:52"
tags = ["type2",  "type1",  "computer_science",  "virtualization"]
+++



A hypervisor is a technology that provides a layer between the hardware and a virtual machine ([virtual-machine](/wiki/virtual-machine/)) which handles all of the transactions between the two. It effectively enables virtualization by giving the host machine the ability to operate multiple VMs on the same system.

## Type 1
Type 1 Hypervisores are also called _bare-metal_ hypervisors. They run directly on the hardware, without the need of an underlying operating system. They provide better performance and enhanced efficiency

These type of hypervisors need hardware acceleration technology of the underlying hardware to run

## Type 2
Type 2 Hypervisors are installed on existing operating systems. They hand over to the OS operations like calls to the CPU, managing network resources, memory and storage.

They are less performant but support a wider range of hardware.

```
                         +--------+ +--------+
                         |Guest OS| |Guest OS|
                         +--------+ +--------+
+--------+ +--------+    +-------------------+
|Guest OS| |Guest OS|    |     Hypervisor    |
+--------+ +--------+    +-------------------+
+-------------------+    +-------------------+
|     Hypervisor    |    |      Host OS      |
+-------------------+    +-------------------+
+-------------------+    +-------------------+
|      Hardware     |    |      Hardware     |
+-------------------+    +-------------------+
  Type 1 Hypervisor        Type 2 Hypervisor
```

A notable technology is the KVM hypervisor, which turns the Linux kernel into a
bare-metal hypervisor, but is classified as type 2 hypervisor due to the full
functioning OS used (Linux).

## References
- https://medium.com/teamresellerclub/type-1-and-type-2-hypervisors-what-makes-them-different-6a1755d6ae2c
