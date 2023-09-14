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

# Solution

---
created: 2023-09-09T19:00:30 (UTC +08:00)
tags: []
source: https://superuser.com/questions/1479313/how-do-i-get-the-full-ubuntu-gnome-experience-via-xrdp
author: Andy McRaeAndy McRae
        
            32433 silver badges99 bronze badges
---

# linux - How do I get the full Ubuntu Gnome Experience via XRDP - Super User

> ## Excerpt
> How do I get the full Ubuntu Gnome experience instead of the generic Gnome experience via XRDP?
When I login from the console, I get the Ubuntu customization of Gnome: The dock is a stripe that ext...

---
This was covered in a thread on their git repo forum [here](https://github.com/neutrinolabs/xrdp/issues/1723). One relativery simple way to activate the full desktop experience is to edit the `startwm.sh` script located under `/etc/xrdp/startwm.sh` which looks like that:

```
#!/bin/sh
# xrdp X session start script (c) 2015, 2017 mirabilos
# published under The MirOS Licence

if test -r /etc/profile; then
    . /etc/profile
fi

if test -r /etc/default/locale; then
    . /etc/default/locale
    test -z "${LANG+x}" || export LANG
    test -z "${LANGUAGE+x}" || export LANGUAGE
    test -z "${LC_ADDRESS+x}" || export LC_ADDRESS
    test -z "${LC_ALL+x}" || export LC_ALL
    test -z "${LC_COLLATE+x}" || export LC_COLLATE
    test -z "${LC_CTYPE+x}" || export LC_CTYPE
    test -z "${LC_IDENTIFICATION+x}" || export LC_IDENTIFICATION
    test -z "${LC_MEASUREMENT+x}" || export LC_MEASUREMENT
    test -z "${LC_MESSAGES+x}" || export LC_MESSAGES
    test -z "${LC_MONETARY+x}" || export LC_MONETARY
    test -z "${LC_NAME+x}" || export LC_NAME
    test -z "${LC_NUMERIC+x}" || export LC_NUMERIC
    test -z "${LC_PAPER+x}" || export LC_PAPER
    test -z "${LC_TELEPHONE+x}" || export LC_TELEPHONE
    test -z "${LC_TIME+x}" || export LC_TIME
    test -z "${LOCPATH+x}" || export LOCPATH
fi

if test -r /etc/profile; then
    . /etc/profile
fi

test -x /etc/X11/Xsession && exec /etc/X11/Xsession
exec /bin/sh /etc/X11/Xsession
```

**NOTE:** Do not delete it and replace it because it will make `xrdp` fail at launch. Just edit the file in place with `sed` for instance. Here I add 3 lines starting at line 4. They are going to be appended from line 4 to 6.

```
sudo sed -i '4 i\export XDG_CURRENT_DESKTOP=ubuntu:GNOME' /etc/xrdp/startwm.sh
sudo sed -i '4 i\export GNOME_SHELL_SESSION_MODE=ubuntu' /etc/xrdp/startwm.sh
sudo sed -i '4 i\export DESKTOP_SESSION=ubuntu' /etc/xrdp/startwm.sh
```

The end file looks like this:

```
#!/bin/sh
# xrdp X session start script (c) 2015, 2017 mirabilos \
# published under The MirOS Licence
export DESKTOP_SESSION=ubuntu
export GNOME_SHELL_SESSION_MODE=ubuntu
export XDG_CURRENT_DESKTOP=ubuntu:GNOME

if test -r /etc/profile; then
    . /etc/profile
fi
if test -r /etc/default/locale; then
    . /etc/default/locale
    
    test -z "${LANG+x}" || export LANG
    test -z "${LANGUAGE+x}" || export LANGUAGE
    test -z "${LC_ADDRESS+x}" || export LC_ADDRESS
    test -z "${LC_ALL+x}" || export LC_ALL
    test -z "${LC_COLLATE+x}" || export LC_COLLATE
    test -z "${LC_CTYPE+x}" || export LC_CTYPE
    test -z "${LC_IDENTIFICATION+x}" || export LC_IDENTIFICATION
    test -z "${LC_MEASUREMENT+x}" || export LC_MEASUREMENT
    test -z "${LC_MESSAGES+x}" || export LC_MESSAGES
    test -z "${LC_MONETARY+x}" || export LC_MONETARY
    test -z "${LC_NAME+x}" || export LC_NAME
    test -z "${LC_NUMERIC+x}" || export LC_NUMERIC
    test -z "${LC_PAPER+x}" || export LC_PAPER
    test -z "${LC_TELEPHONE+x}" || export LC_TELEPHONE
    test -z "${LC_TIME+x}" || export LC_TIME
    test -z "${LOCPATH+x}" || export LOCPATH
fi

if test -r /etc/profile; then
    . /etc/profile
fi
test -x /etc/X11/Xsession && exec /etc/X11/Xsession
exec /bin/sh /etc/X11/Xsession
```

After that, `systemctl restart xrdp.service` or restart your machine and it should work fine. Here is my xrdp session after restart.

[![Xrdp with gnome desktop experience activated](https://i.stack.imgur.com/g7N6i.png)](https://i.stack.imgur.com/g7N6i.png)

[Share](https://superuser.com/a/1655262 "Short permalink to this answer")

Share a link to this answer

Copy link[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/ "The current license for this post: CC BY-SA 4.0")

[Improve this answer](https://superuser.com/posts/1655262/edit)



# Second step

add the following code to the end of that file


```sh

unset DBUS_SESSION_BUS_ADDRESS
unset XDG_RUNTIME_DIR

```