ERROR: unable to configure virtual network port: could not open TUN/TAP device

---
created: 2023-07-03T18:58:48 (UTC +08:00)
tags: []
source: https://wiki.archlinux.org/title/ZeroTier
author: 
---

# ZeroTier - ArchWiki

> ## Excerpt
> ZeroTier is a cross-platform and easy to use virtual LAN / Hamachi alternative, also available on Android, iOS, Mac, and Windows.
A GUI is only available on Mac and Windows according to the developers.

---
ZeroTier is a cross-platform and easy to use virtual LAN / Hamachi alternative, also available on Android, iOS, Mac, and Windows. A GUI is only available on Mac and Windows according to the developers.

## Installation

[Install](https://wiki.archlinux.org/title/Install "Install") the [zerotier-one](https://archlinux.org/packages/?name=zerotier-one) package.

## Configuration

You will need to create an account over at [My ZeroTier](https://my.zerotier.com/) and create a network and select your desired options, such as support for IPv4 or IPv6 or both. Keep note of the network ID of the newly-created network as you will be needing it later on.

Leave the page for the network that you will use open, as you will need to authorize each computer or device that you connect, and also verify that they get an IP.

To begin [start](https://wiki.archlinux.org/title/Start "Start") `zerotier-one.service`, if one would like it to start at boot [enable](https://wiki.archlinux.org/title/Enable "Enable") `zerotier-one.service`. To find out your computer id, which will be a 10-digit hexadecimal number similar to 89e92ceee5, run:

```
# zerotier-cli info
```

```
200 info 89e92ceee5 1.2.4 ONLINE

```

where 89e92ceee5 is address and 1.2.4 is the version, followed by its status.

Next you will need to join a network:

```
# zerotier-cli join network_id

```

The network ID is a 16-digit hexadecimal number like 8056c2e21c000001 which you can get on the Networks page.

Back on the network page at my.zerotier, scroll down to the Members section where you should see all addresses that have joined. To authorize each computer or device, check the left-most checkbox and verify that it is given an IP address (this may take 10 or 20 seconds). You may need to run [dhcpcd](https://wiki.archlinux.org/title/Dhcpcd "Dhcpcd") to acquire the new IP address locally.

To verify that all devices can see each other you can [ping](https://wiki.archlinux.org/title/Ping "Ping") each address using its associated IP, like so:

```
$ ping 192.168.192.91
```

```
PING 192.168.192.91 (192.168.192.91) 56(84) bytes of data.
64 bytes from 192.168.192.91: icmp_req=1 ttl=53 time=52.9 ms
...
```

One can also see connected peers by running:

```
# zerotier-cli listpeers
```

```
200 listpeers <ztaddr> <path> <latency> <version> <role>
200 listpeers 12ac4a1e71 87.98.218.130/30883;12;12;1.00 589 1.2.5 LEAF
200 listpeers 8841408a2e 159.203.2.154/9993;13262;13220;1.00 127 1.1.5 PLANET
200 listpeers 9d219039f3 159.203.97.171/9993;13241;3218;1.00 63 1.1.5 PLANET
...

```

and see a list of networks the computer is connected to by running:

```
# zerotier-cli listnetworks

```

## Manual configuration

Manual configuration can be achieved by creating the file `local.conf` in the program's home directory `/var/lib/zerotier-one`. This allows you to set various configuration options, such as restricting the service to specific interfaces, or enforcing use of a different port. This file **must** be valid JSON as it can be re-written by zerotier-one. Below is an example `local.conf` which stops zerotier-one using docker and bridged interfaces:

```
local.conf
```

```
{
    "settings": {
        "interfacePrefixBlacklist": [ "docker", "br-" ]
    }
}

```

More information on the available configuration items is available on the [program's GitHub repository](https://github.com/zerotier/ZeroTierOne/tree/master/service#local-configuration-file).

## Troubleshooting

### Devices in virtual network not reachable

Check the [unit status](https://wiki.archlinux.org/title/Unit_status "Unit status") of `zerotier-one.service`. If you see following error, the [TUN/TAP](https://docs.kernel.org/networking/tuntap.html) kernel module is probably not loaded:

```
ERROR: unable to configure virtual network port: could not open TUN/TAP device: No such file or directory

```

A reboot should resolve the issue.

# solution


[[Activate TUNTAP]]