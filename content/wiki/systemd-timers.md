+++
toc = true
title = "Systemd Timers"
author = "Lorenzo Drumond"
date = "2024-04-22T18:19:25"
tags = ["boot",  "linux",  "process",  "init",  "introduction",  "systemctl",  "systemd"]
+++


Timers can trigger events at specified time intervals; they can trigger a
script or program to run a specific amount of time after an event such as
boot, startup, completion of previous task, or even the previous completion
of the service unit called by the timer.

## System maintenance timers
When Fedora gets installed, it creates several timers that are part of the system maintenance procedures. These timers triggers are necessary for common maintenance tasks, such as updating system databases, cleaning up temporary files, etc

To look at some of the timers, do
```
systemctl status *timer
```

Each timer has at least six lines of information associated with it:
- timer's file name and short description
- timer's status, whether it's loaded, full path and vendor preset
- its active status, which includes date and time it became active
- date and time the timer will be triggered next
- name of the event or the service that is triggered by the timer
- pointer to relevant documentation (optional)
- journal entry for the most recent instance of the service triggered by the timer.

## Create a timer
Let's create our own service unit and a timer unit to trigger it.

First let's create a simple service that runs something basic, such as `free`.

`myMonitor.service` in `/etc/systemd/system`
```
[Unit]
Description=Logs system statistics to the systemd journal
Wants=myMonitor.timer

[Service]
Type=oneshot
ExecStart=/usr/bin/free

[Install]
WantedBy=multi-user.target
```

Run `systemctl start myMonitor.service` to start the unit.
By default, stdout from programs run by systemd units is sent to the journal. Let's have a look in there with `journalctl -S today -u myMonitor.service`

Now let's create the timer unit file `myMonitor.timer` in `/etc/systemd/system`
```
[Unit]
Description=Logs some system statistics to the systemd journal
Requires=myMonitor.service

[Timer]
Unit=myMonitor.service
OnCalendar=*-*-* *:*:00

[Install]
WantedBy=timers.target
```

The `OnCalendar` time specification should trigger the timer to execute the `myMonitor.service` unit every minute.

One thing to notice is that the timer doesn't trigger exactly on the minute at :00 seconds. This is intentional, but it can be overridden.

The reason is to prevent multiple services from triggering at exactly the
same time. Timers are intentionally designed to prevent simultaneous
triggers; they will trigger semi-randomly within a time window that starts
at the specified trigger time and ends at the specified time plus one
minute.

If you want greater accuracy in your trigger, add in the `[Timer]` section the statement
```
AccuracySec=1us
```

Timers are started and enabled in the same way as other service files.

## Timer Types
systemd timers have capabilities not found in cron. A timer might be configured to trigger a specific elapsed time after system boot, after startup, or after a defined service unit activates. These are called _monotonic timers_. They are reset after each boot.

Here's a list of timers


| Timer              | Monotonic | Definition                                                                     |
|--------------------|-----------|--------------------------------------------------------------------------------|
| OnActiveSec=       | X         | timer relative to the moment the timer is activated.                           |
| OnBootSec=         | X         | timer relative to when the machine boots up.                                   |
| OnStartupSec=      | X         | timer relative to when the service manager first starts                        |
| OnCalendar=        |           | real-time (i.e., wall clock) timers with calendar event expressions.           |

## Calendar event specifications
These are a key part of triggering timers at desired repetitive times.

The basic format using `OnCalendar=` is `DOW YYYY-MM-DD HH:MM:SS`
DOW (Day Of Week) is optional, and other fields can use an asterisk to
match any value in that position. Comma separated lists of each unit can be
specified. Unit ranges can be specified with `..` between beginning and
ending values.

used to specify a day of the week as a modifier.

Here some example

| Calendar event specification | description                                                                                            |
|------------------------------|--------------------------------------------------------------------------------------------------------|
| *-*-* 00:15:30               | Every day of every month of every year at 15 mins and 30 secs after midnight                           |
| Weekly                       | Every Monday at 00:00:00                                                                               |
| Mon *-*-* 00:00:00           | Same as Weekly                                                                                         |
| Mon                          | Same as Weekly                                                                                         |
| Wed 2020-*-*                 | Every Wednesday in 2020 at 00:00:00                                                                    |
| Mon..Fri 2021-*-*            | Every weekday in 2021 at 00:00:00                                                                      |
| 2022-6,7,8-1,15 01:15:00     | The 1st and 15th of June, July and August of 2022 at 01:15:00am                                        |
| Mon *-05~03                  | The next occurrence of a Monday in May of any year which is also the 3rd day from the end of the month |
| Mon..Fri *-08~04             | the 4th day preceding the end of August for any year which it also falls on a weekday                  |
| *-05~03/2                    | The third day from the end of the month in May and the again two days later. Repeats every year.       |
| *-05-03/2                    | The third day of the month of May and then every second day for the rest of May. Repeats every year.   |

## Test calendar specifications
To test calendar specifications, we can use `systemd-analyze calendar` to provide the normalized form used by `OnCalendar=`

## References
- [systemd-services](/wiki/systemd-services/)
- [systemd-targets](/wiki/systemd-targets/)
