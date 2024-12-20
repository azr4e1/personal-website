+++
title = "Homelab setup"
author = "Lorenzo Drumond"
date = "2024-01-06T12:24:10"
tags = ["arr",  "fedora",  "readarr",  "radarr",  "stack",  "sonarr",  "lab",  "nextcloud",  "docker",  "server",  "lidarr"]
+++


This is a guide to setup your own home server.

We will be installing:
- Adguardhome: adblocker for all your devices
- Jellyfin: platform to watch your content
- Qbittorrent: torrent client
- Prowlarr: torrent indexers provider.
- Sonarr: download TV shows
- Radarr: download movies
- Readarr: download (audio)books
- Lidarr: download music
- Nextcloud: home cloud solution
- Calibre: manage (audio)books
- gluetunn: VPN
- homepage: dashboard for all these services

# OS installation
We will be using Fedora Server for this homelab. Download the ISO from https://fedoraproject.org/en/server/download.

Next -> [fedora-server-setup](/wiki/fedora-server-setup/)

Now create the directory structure for the \*arr stack.
```bash
mkdir /srv/
mkdir /srv/media
mkdir /srv/torrents

cd /srv/torrents
mkdir audiobooks books incomplete movies music tv

cd /srv/media
mkdir audiobooks books movies music tv

cd /srv
mkdir configs
mkdir containers
```

# Adguard Installation
Adguard Home is a network-wide software for blocking ads and tracking. After you set it, it'll cover
ALL your home devices, without needing any client-side software for that.

It operates as a DNS server that re-routes tracking domains to a "black-hole", thus prventing
your devices from connecting to those servers.

We will be using Docker for that

Next -> [adguardhome-setup](/wiki/adguardhome-setup/)

# Prawlarr Installation

# References
- https://fedoraproject.org/en/server/download
- https://github.com/AdguardTeam/AdGuardHome
- https://lemmy.world/post/6542476
