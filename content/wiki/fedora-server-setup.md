+++
title = "Fedora Server setup"
author = "Lorenzo Drumond"
date = "2024-01-06T12:37:43"
tags = ["installation",  "fedora",  "setup",  "server",  "homelab",  "os"]
+++


Create a bootable stick using a spare USB stick. Plug it in, unmount it and run
```bash
dd if=fedora_server_iso_location of=/dev/sdb status=progress
```
where `/dev/sdb` is the device file of the USB stick (not a parition!)

When finished, plug it in the device (laptop in our case) you want to turn into server, and boot that device from that USB stick.

Follow the installation steps and you should have your Fedora Instance running.

Log in as root.

Upgrade the system:
```bash
dnf upgrade
shutdown -r now
```

In order to turn off the display after one minute, edit `/etc/default/grub` and add or modify it so that it has
```bash
GRUB_CMDLINE_LINUX="consoleblank=60"
```
and then run
```bash
grub2-mkconfig
```

In order to not put the computer in suspend when closing the lid, modify `/etc/systemd/logind.conf` so that
it contains (not commented):
```bash
HandleLidSwitch=ignore
HandleLidSwitchExternalPower=ignore
HandleLidSwitchDocked=ignore
```

Also setup a different account from `root`, so that we can log-into the web-console:
```bash
useradd -aG wheel LOGIN
passwd LOGIN
```

Set up a static IP for this computer on your network, so that if the router is running DHCP, the same IP will always be assigned to this computer.

After that, we need to tell NetworkManager that we have a static IP. This will stop NetworkManager to run the DHCP client and it will free up port 68.
```bash
nmcli con mod DEVICE ipv4.addresses "ADDRESS"
nmcli con mod DEVICE ipv4.gateway "GATEWAY"
nmcli con mod DEVICE ipv4.method manual
nmcli con mod DEVICE connection.autoconnect yes
```

Let's now install Docker so that we can run all our services
```bash
dnf -y install dnf-plugins-core
dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl enable --now docker
docker run hello-world
```

# References
- https://fedoraproject.org/en/server/download
- https://askubuntu.com/questions/62858/turn-off-monitor-using-command-line/1076734#1076734
- https://serverfault.com/questions/1006634/nmcli-set-static-ip-address-without-the-dhcp
- https://docs.docker.com/engine/install/fedora/#install-using-the-repository
