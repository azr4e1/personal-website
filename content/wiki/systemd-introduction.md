+++
toc = true
hideReply = true
title = "Systemd introduction"
author = "Lorenzo Drumond"
date = "2024-04-22T18:11:10"
tags = ["boot",  "linux",  "process",  "init",  "introduction",  "systemctl",  "systemd"]
+++


systemd is a software suite that provides an array of system components for Linux operating systems.

The main aim is to unify service configuration and behavior across Linux distributions. Its primary component is a "system and service manager" – an init system used to bootstrap user space and manage user processes.

It also provides replacements for various daemons and utilities, including device management, login management, network connection management, and event logging.

The name systemd adheres to the Unix convention of naming daemons by appending the letter d.

## References
- https://en.wikipedia.org/wiki/Systemd

Next -> [systemd-services](/wiki/systemd-services/)

Next -> [systemd-targets](/wiki/systemd-targets/)

Next -> [systemd-timers](/wiki/systemd-timers/)
