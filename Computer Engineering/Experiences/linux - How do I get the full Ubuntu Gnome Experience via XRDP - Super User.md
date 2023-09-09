---
created: 2023-09-09T11:49:39 (UTC +08:00)
tags: []
source: https://superuser.com/questions/1479313/how-do-i-get-the-full-ubuntu-gnome-experience-via-xrdp
author: |-
  Andy McRaeAndy McRae
  32433 silver badges99 bronze badges
aliases:
---

# linux - How do I get the full Ubuntu Gnome Experience via XRDP - Super User

> ## Excerpt
> How do I get the full Ubuntu Gnome experience instead of the generic Gnome experience via XRDP?
When I login from the console, I get the Ubuntu customization of Gnome: The dock is a stripe that ext...

---
How do I get the full Ubuntu Gnome experience instead of the generic Gnome experience via XRDP?

When I login from the console, I get the Ubuntu customization of Gnome: The dock is a stripe that extends from the one edge of the screen to the other, and the Settings app has a Dock entry.

When I login via XRDP, it looks like Generic Gnome: The dock is only large enough to contain its icons, and Settings has no Dock entry. More importantly, I have a bunch of icons on my "Ubuntu" desktop which are absent from the "generic" desktop.

I've read, "Ubuntu dock setting is accessible only from the GNOME session(s) customised by Ubuntu, not from the default GNOME session(s)," so that's why I think I'm getting generic GNOME via XRDP.

-   I'm running Ubuntu 18.04.3 and selected the 'Ubuntu' window manager.
-   I've installed xdrp.
-   I've created a .xsession with `gnome-session --session=ubuntu` and chmod +x.

Before creating `.xsession`, `ps` showed `gnome-session-binary --session=ubuntu` for console sessions and `gnome-session-binary` for XDRP sessions. After creating `.xsession` (and restarting), both sessions include `--session=ubuntu`, but the XRDP session still LOOKS like generic Gnome and it is missing my desktop icons.

I checked `$XDG_CURRENT_DESKTOP`. On the console it is `ubuntu:GNOME`. On XRDP it is "GNOME". So I launched `--session=ubuntu` but it seems to have been lost.

How do I get the full Ubuntu Gnome experience instead of the generic Gnome experience via XRDP?


# Second step

add the following code to the end of that file


```sh

unset DBUS_SESSION_BUS_ADDRESS
unset XDG_RUNTIME_DIR

```