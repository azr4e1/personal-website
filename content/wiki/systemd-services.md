+++
toc = true
hideReply = true
title = "Systemd Services"
author = "Lorenzo Drumond"
date = "2024-04-22T18:14:17"
tags = ["boot",  "services",  "linux",  "init",  "process",  "introduction",  "systemctl",  "systemd"]
+++



## What is a service
It's a background process started or stopped based on certain circumstances by systemd (init process).

A _systemd service file_ is a file written in such a format that systemd can parse it and understand.

A service file is actually called a _unit_ file.

A systemd unit consists of a name, type, and configuration file. The name
provides a unique identity to the unit. The configuration file defines the
responsibility or task of the unit. The type helps the unit to group with
other similar types of units.

For easier management, units are categorized into several types. There is no specific rule for categorization.

Common unit types are:

| Unit Type | Description                                                                                                |
|-----------|------------------------------------------------------------------------------------------------------------|
| Target    | A group of units that defines a sync point used at boot time to start the system in a particular state     |
| Service   | Start, stop restart or reload a service daemon                                                             |
| Socket    | Activate a service when the service receives incoming traffic on a listening socket                        |
| Device    | Implement device-based activation                                                                          |
| Mount     | Control file-system mount point                                                                            |
| Automount | Provide and control on-demand mounting of file systems                                                     |
| Swap      | encapsulate/activate/deactivate swap partition                                                             |
| Path      | monitor files/directories and activate/deactivate a service if the specified file or directory is accessed |
| Timer     | activate/deactivate specified service based on a timer or when the set time is elapsed                     |
| Snapshot  | create and save the current state of all running units. Used to restore system later                       |
| Slice     | Manage system resources as CPU and memory                                                                  |
| Scope     | Organize and manage foreign processes                                                                      |
| busname   | Control DBus system                                                                                        |

*NB*:
- A _daemon_ is a process that starts at boot time, or when the service starts, and runs in the background performing various tasks. It continuously runs until it is stopped manually or the system is shutdown.
- A _socket_ is a primary communication channel. A service or process uses it to communicate with other services or processes running in the local or remote system.
- A service refers to one or more daemons. Starting and stopping a service makes a one-time change to the state of the system.

## Basic Structure
A service file has three necessary sections:
- `[Unit]`
- `[Service]`
- `[Install]`

The file extension is `.service`
Comments are denoted by `#`

This is an example of a service file
```
[Unit]
Description=Apache web server
After=network.target
Before=nextcloud-web.service

[Service]
ExecStart=/usr/local/apache2/bin/httpd -D FOREGROUND -k start
ExecReload=/usr/local/apache2/bin/httpd -k graceful
Type=notify
Restart=always


[Install]
WantedBy=default.target
RequiredBy=network.target
```

### The Unit section
This section contains details and description about the unit itself.

- `Description`: Human-readable title of the service
- `After`: dependency on a service; start the service *after* the [Systemd Targets](/wiki/Systemd Targets/) or service specified.
- `Before`: start current service *before* specified service.

### The Service section
This section contains details about the execution and termination of service.

- `ExecStart`: the command that needs to be executed when the service starts.
- `ExecReload`: optional; specifies how a service is restarted.
- `Type`: indicates the start-up type of a process for a given systemd service. Default is `simple`
- `Restart`: optional; specifies if a service should be restarted or not.

### The Install section
This section handles the installation of a systemd service/unit file. Used when you run either `systemctl enable` and `systemctl disable`.

This section contains information about the target unit.

- `WantedBy`: Name of the target unit which starts this unit automatically.
  Similar to `After` and `Before`. This is used to specify
  systemd-equivalent [Systemd Targets](/wiki/Systemd Targets/). The `default.target` is when all the system
  initialization is complete -- when the user is asked to log in.
- `RequiredBy`: similar to `WantedBy`, with the difference that this specifies _hard dependencies_.

## Creating your own systemd service

Let's create two unit files, one as root and one as user; the main difference in the two is their filesystem location.

### Service for root
Let's say we wrote a script we want to run as root user at boot called `sys-update.sh`, with path `/root/.scripts/sys-update.sh`

`sys-update.sh`
```
#!/usr/bin/env bash

if [ ${EUID} -ne 0 ]
then
	exit 1 # this is meant to be run as root
fi

apt-get update 1>/dev/null 2>>/root/logs/sys-update.log
```

It's considered good practice to put service files that need superuser privileges inside the `/etc/systemd/system/` directory.

Let's create the `update-on-boot.service` inside this directory.
```
[Unit]
Description=Keeping my sources fresher than Arch Linux
After=multi-user.target

[Service]
ExecStart=/usr/bin/bash /root/.scripts/sys-update.sh
Type=simple

[Install]
WantedBy=multi-user.target
```

### Enabling the service
After you place the unit file under `/etc/systemd/system`, you can make systemd aware of the new service with
```
sudo systemctl daemon-reload
```

Now we can enable the service with
```
sudo systemctl enable SERVICE-NAME.service
```

To verify that it's enabled, run
```
sudo systemctl is-enabled SERVICE-NAME.service
```

### Systemd service for normal users
Let's create a script intended to run before a shutdown. Let's create a script at `/home/ld/.scripts/big-uptime.sh`
```
#!/usr/bin/env bash

uptime | tee -a /home/pratham/logs/uptime.log
```

Systemd service files belonging to a normal user go inside `~/.config/systemd/user/` directory

Let's create the service file
```
[Unit]
Description=Log uptime in scoreboard
DefaultDependencies=no
Before=shutdown.target

[Service]
Type=oneshot
ExecStart=/usr/bin/bash /home/pratham/.scripts/big-uptime.sh
TimeoutStartSec=0

[Install]
WantedBy=shutdown.target
```

One key difference from before is the `Type`: when the type is `oneshot`,
systemd makes sure that no services are being started/stopped until our
service is fully initialized or until our service has started.


| Situation                                           | Type    |
|-----------------------------------------------------|---------|
| Service needs to complete before follow-up services | oneshot |
| follow-up services need to run while services does  | simple  |
| long-running service                                | simple  |
| you need to run service only at shutdown            | oneshot |
| you need to have multiple separate commands to run  | oneshot |

Before we enable the service, we need to reload systemd so that it is aware of the newly created systemd service file. Run
```
systemctl --user daemon-reload
```

Now we can enable the service; run
```
systemctl --user enable SERVICE-NAME.service
```

## References
