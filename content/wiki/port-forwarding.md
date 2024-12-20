+++
title = "Port Forwarding"
author = "Lorenzo Drumond"
date = "2023-12-31T15:21:25"
tags = ["router",  "network",  "vpn",  "computer_science",  "internet"]
+++


Port forwarding is a way for connection attempts from outside your local
network to be established with a device inside the local network.

We can set on the router of a local network a port-forwarding instruction
that specifies a local IP and a port, so that every incoming request that
attempts to connect to the specified port will be routed to the computer at
the local network address specified.

This is done because local private address cannot be used when establishing
connections on the internet. Instead, your router will use [NAT](/wiki/NAT/) to translate
your local IP to the public IP (the IP of the router assigned by the ISP),
and use that instead.

This works if the connection requests originates from inside the local
network, so if a response to the request arrives, the router will know
which computer to send it to (thanks to NAT database). However, if the
requests originate from outside, the router (which is the only device
on the network with the public IP and a private IP, the default gateway)
won't be able to tell which computer it is destined to.

Port forwarding allows us to say to the router: if a request for port X
arrives, route it the local IP xxxx.xxxx.xxxx

# References
- https://superuser.com/questions/284051/what-is-port-forwarding-and-what-is-it-used-for
