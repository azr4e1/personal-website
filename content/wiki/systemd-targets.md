+++
toc = true
hideReply = true
title = "Systemd Targets"
author = "Lorenzo Drumond"
date = "2024-04-22T18:18:20"
tags = ["boot",  "linux",  "process",  "init",  "targets",  "introduction",  "systemctl",  "systemd"]
+++


Systemd manages all services and processes in Linux. To control and manage
services and processes, it uses units. A unit represents and manages an
individual service or process. A target-unit is the logical collection of
other system units.

## System State
A system state is an environment in which all the required services and processes run to build and provide the necessary functionality.

To define various system states, systemd uses keywords, known as *target-units*.

target-units organize functionalities. In old init systems, functionality
were organized in *run-levels*. To guarantee backward compatibility,
systemd uses symbolic links for each run-level and maps it with the
equivalent target-unit.

## Run-levels vs Target-units
Here's a description of the seven run-levels with equivalent target-units:

| Run-level | Description                                             | target-unit       |
|-----------|---------------------------------------------------------|-------------------|
| 0         | Shutdown all services and power off the system          | poweroff.target   |
| 1         | single user mode for maintenance and recovery           | rescue.target     |
| 2         | multiuser mode w/o networking                           | multi-user.target |
| 3         | multiuser mode with networking                          | multi-user.target |
| 4         | user defined mode. Users can customized this run-level. | multi-user.target |
| 5         | X11 GUI with networking.                                | graphical.target  |
| 6         | Shutdown all services and reboot                        | reboot.target     |

Systemd also provides more service-specific target-units, which inherit all services from other target-units and add their own to them.

Here's a list of most commonly used target-units

| Target-unit | Description                                                                                                                             |
|-------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| halt        | Shut down all services and halt the system                                                                                              |
| poweroff    | shut down all services and power off system                                                                                             |
| shutdown    | shut down the system normally                                                                                                           |
| rescue      | single-user (root) mode for maintenance. No networking                                                                                  |
| multi-user  | multi-user command line mode for regular tasks. Starts all essential and custom services and provides the CLI prompt for login and work |
| graphical   | same as multi-user.target but also includes GUI.                                                                                        |
| reboot      | reboot the system normally                                                                                                              |
| default     | default target to boot the system. Usually set either to multi-user.target or graphical.target                                          |
| emergency   | start an emergency shell and mount only root fs.                                                                                        |
| hibernate   | save the running state of the system to hard disk and power off the system. When powered on again, the system restores saved state      |
| suspend     | same as hibernate.target except the system state is save in memory and power to memory is not turned off.                               |

To view the list of all available target-units with their status, run
```
systemctl list-units --type=target --all
```

## Switching between different targets
To switch the system into another target or change the current target, use
```
systemctl isolate [target]
```

## Viewing and changing the default boot target
To view the default boot target, use
```
systemctl get-default
```

To change the default boot target, use
```
systemctl set-default [target]
```

## References
- [systemd-services](/wiki/systemd-services/)
