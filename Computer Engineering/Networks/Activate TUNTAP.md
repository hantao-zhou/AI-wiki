---
created: 2023-07-03T19:01:09 (UTC +08:00)
tags: []
source: https://www.time4vps.com/knowledgebase/activate-tun-tap/
author: 
---

# Activate TUN/TAP - Time4VPS

> ## Excerpt
> For latest operating system templates: CentOS 6 CentOS 7 Ubuntu 12 Ubuntu 14 Ubuntu 15 Ubuntu 16 Debian 7 Debian 8 TUN/TAP device is already activated by

---
# Activate TUN/TAP

For latest operating system templates:

-   CentOS 6
-   CentOS 7
-   Ubuntu 12
-   Ubuntu 14
-   Ubuntu 15
-   Ubuntu 16
-   Debian 7
-   Debian 8

TUN/TAP device is already activated by default and the customer shouldn’t do anything about it.

For VPS administrators with older operating system versions, please execute these commands via SSH:

-   mkdir -p /dev/net
-   mknod /dev/net/tun c 10 200
-   chmod 600 /dev/net/tun
-   reboot

That’s it. TUN/TAP module is activated.
