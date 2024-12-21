+++
toc = true
hideReply = true
title = "Virtual Machine"
author = "Lorenzo Drumond"
date = "2023-12-24T23:39:31"
tags = ["computer_science",  "virtualization"]
+++



A virtual machine (VM) is the virtualization or emulation of a computer system.
It is an efficient, isolated duplicate of a real computer machine.

The physical, "real-world" hardware running the VM is generally referred to as
the 'host', and the virtual machine emulated on that machine is generally
referred to as the 'guest'. A host can emulate several guests, each of which
can emulate different operating systems and hardware platforms.

The benefit can include:
- separate systems for development and testing on a single host
- containerization of applications for security purposes
- running different kernels (windows on Linux) to run non-native applications (like games)
- they can be moved between local or remote virtualized servers

## References
- https://en.wikipedia.org/wiki/Virtual_machine

Next -> [hypervisors](/wiki/hypervisors/)
