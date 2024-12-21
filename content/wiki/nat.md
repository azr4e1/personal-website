+++
toc = true
hideReply = true
title = "NAT"
author = "Lorenzo Drumond"
date = "2023-12-31T15:35:23"
tags = ["computer_science",  "internet",  "network",  "vpn",  "router"]
+++


Network Address Translation is a function built into every router
which allows computers inside a local network (LAN) to communicate
with the wider internet.

Inside your network, computers have addresses like 192.168.1.100. All addresses
in the 192.168.* range (or in the 10.*) range are "private" or "reserved"
addresses. These addresses are officially assigned by IANA to be used inside of
private networks. Your router automatically assigns such an address to each
computer connected via DHCP. These addresses are how computers in your network
communicate with the router and with each other.

Your router has a separate network interface that connects it to the internet.
This interface has a very different address which is assigned by your ISP. The
router uses it to communicate with other computers on the internet. Computers
inside of your network have _non-routable_ private IP addresses, meaning that
if they send packets directly to the internet the packets will automatically be
dropped. But your router has a routable address. Network Address Translation
translates between these two kinds of addresses, allowing the multiple
computers inside of your network to appear to the internet as one computer with
one address.

Every time a computer inside your network wants to connect to a computer on the
internet, it sends the connection request to the router (it knows to send it to
the router because its Default Gateway parameter is set to the router's
address). The router then takes that connection request (a "SYN request" in
TCP/IP) and changes the source address (the "reply-to" or return address) and
changes it from the private IP of the computer to the public IP of the router,
so that the response will be sent to the router. It then takes note in a
database (called the NAT table) that the connection was initiated, so that it
remembers it later.

When the response comes back from the remote computer (a "SYN-ACK"), the router
looks in its NAT table and sees that a connection to that host on that port was
previously initiated by a private computer on your network, changes the
destination address to the private address of the computer, and forwards it
inside your network. In this way, packets can continue to transit back and
forth between networks, with the router transparently changing the addresses so
that it works. When the connection is terminated, the router just removes it
from the NAT table.

## References
- https://superuser.com/questions/284051/what-is-port-forwarding-and-what-is-it-used-for
