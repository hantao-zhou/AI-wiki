---
created: 2023-07-02T10:24:15 (UTC +08:00)
tags: []
source: https://askubuntu.com/questions/1404245/remote-desktop-from-windows-onto-ubuntu-22-04-takes-me-to-a-xrdp-login-then-a-bl
author: jon hanson
---

# Remote Desktop from Windows onto Ubuntu 22.04 takes me to a XRDP login then a blank screen - Ask Ubuntu

> ## Excerpt
> I'm trying to get the Remote Desktop feature working on Ubuntu (Desktop) 22.04, but I can't seem to connect to my Ubuntu desktop from a Windows (10) PC. I'm using these instructions:

https://help....

---
sudo nano /etc/xrdp/startwm.sh

```
export GNOME_SHELL_SESSION_MODE=ubuntu
export XDG_CURRENT_DESKTOP=ubuntu:GNOME
```