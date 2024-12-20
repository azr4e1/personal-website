+++
title = "Adguardhome Setup"
author = "Lorenzo Drumond"
date = "2024-01-06T12:42:16"
+++


Create
```bash
mkdir /srv/containers/adguard-home
mkdir /srv/configs/adguardhome
```

Inside that folder, create the file `docker-compose.yml`
```docker-compose
version: '3.3'
services:
    run:
        container_name: adguardhome
        restart: unless-stopped
        volumes:
            - '/srv/configs/adguardhome/workdir:/opt/adguardhome/work'
            - '/srv/configs/adguardhome/confdir:/opt/adguardhome/conf'
        ports:
            - '53:53/tcp'
            - '53:53/udp'
            - '67:67/udp'
            - '68:68/udp'
            - '68:68/tcp'
            - '80:80/tcp'
            - '443:443/tcp'
            - '443:443/udp'
            - '3000:3000/tcp'
        image: adguard/adguardhome
```

# Free Port 53
Before running this container, we need to make sure that port 53 is available. On Fedora Server, it is occupied by `systemd-resolved`.

From https://hub.docker.com/r/adguard/adguardhome:
If you try to run AdGuardHome on a system where the `resolved` daemon is started, docker will fail to bind on port 53, because `resolved` daemon is listening on `127.0.0.53:53`. Here's how you can disable `DNSStubListener` on your machine:
1. Deactivate `DNSStubListener` and update the DNS server address. Create a new file, `/etc/systemd/resolved.conf.d/adguardhome.conf` (creating the `/etc/systemd/resolved.conf.d` directory if needed) and add the following content to it:
```ini
[Resolve]
DNS=127.0.0.1
DNSStubListener=no
```
Specifying `127.0.0.1` as the DNS server address is necessary because otherwise the nameserver will be `127.0.0.53` which doesn't work without `DNSStubListener`.

2. Activate a new `resolv.conf` file:
```bash
mv /etc/resolv.conf /etc/resolve.conf.backup
ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
```

3. Stop `DNSStubListener`:
```bash
systemctl reload-or-restart systemd-resolved
```

# Run Container
In `/srv/containers/adguard-home` run:
```bash
docker-compose up -d
```

Open up the adguard home console on YOUR_SERVER_IP:3000

Enable the default filter list from `filters -> DNS blocklist`. You can also add custom filters.

# References
- https://hub.docker.com/r/adguard/adguardhome
