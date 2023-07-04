## First error

```bash
dijinli@dijinli-90Q90019CP:~$ vncserver

New Xtigervnc server 'dijinli-90Q90019CP:1 (dijinli)' on port 5901 for display :1.
Use xtigervncviewer -SecurityTypes VncAuth -passwd /tmp/tigervnc.bAumMC/passwd :1 to connect to the VNC server.

vncserver: Can't exec '/home/dijinli/.vnc/xstartup': Permission denied

=================== tail /home/dijinli/.vnc/dijinli-90Q90019CP:1.log ===================
Can't exec "/home/dijinli/.vnc/xstartup": Permission denied at /usr/share/perl5/TigerVNC/Wrapper.pm line 1270.
========================================================================================

Session startup via '/home/dijinli/.vnc/xstartup' exited with status 1!

Maybe try something simple first, e.g.,
	tigervncserver -xstartup /usr/bin/xterm
The X session exited with status 1!
Killing Xtigervnc process ID 2417... success!
dijinli@dijinli-90Q90019CP:~$
```

So then I add the executive privillege to the damn file and then there was another error

```bash
dijinli@dijinli-90Q90019CP:~$ vncserver

New Xtigervnc server 'dijinli-90Q90019CP:1 (dijinli)' on port 5901 for display :1.
Use xtigervncviewer -SecurityTypes VncAuth -passwd /tmp/tigervnc.TY6CXU/passwd :1 to connect to the VNC server.


=================== tail /home/dijinli/.vnc/dijinli-90Q90019CP:1.log ===================
/home/dijinli/.vnc/xstartup: 6: dbus-launch: not found
========================================================================================

Session startup via '/home/dijinli/.vnc/xstartup' cleanly exited too early (< 3 seconds)!

Maybe try something simple first, e.g.,
	tigervncserver -xstartup /usr/bin/xterm
The X session cleanly exited!
Killing Xtigervnc process ID 2454... success!
```

the file look like this

```bash
#!/bin/sh
# Start Gnome 3 Desktop
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
vncconfig -iconic &
dbus-launch --exit-with-session gnome-session &
```

## find the reasons for this

It seems that dbus-lauch is a deprecated command

## correct file

~/.vnc/xstartup should be

```bash
#!/bin/sh
# Change "GNOME" to "KDE" for a KDE desktop, or "" for a generic desktop
MODE="GNOME"
#Uncommment this line if using Gnome and your keyboard mappings are incorrect.
#export XKL_XMODMAP_DISABLE=1
# Load X resources (if any)
if [ -e "$HOME/.Xresources" ]
then
        xrdb "$HOME/.Xresources"
fi
# Try a GNOME session, or fall back to KDE
if [ "GNOME" = "$MODE" ]
then
        if which gnome-session >/dev/null
        then
                gnome-session --session=ubuntu-2d &
        else
                MODE="KDE"
        fi
fi
# Try a KDE session, or fall back to generic
if [ "KDE" = "$MODE" ]
then
        if which startkde >/dev/null
        then
                startkde &
        else
                MODE=""
        fi
fi
# Run a generic session
if [ -z "$MODE" ]
then
        xsetroot -solid "#DAB082"
        x-terminal-emulator -geometry "80x24+10+10" -ls -title "$VNCDESKTOP Desktop" &
        x-window-manager &
fi
```

## true problem

Some how there is tightvncserver on the same machine, they are conflicted.

Another problem is the &

---
created: 2023-06-27T19:35:28 (UTC +08:00)
tags: []
source: https://askubuntu.com/questions/1375111/vncserver-exited-too-early
author: jxwjxw
        
            12322 silver badges1010 bronze badges
---

# remote desktop - vncserver exited too early - Ask Ubuntu

> ## Excerpt
> I have a Ubuntu 21.10 headless and I need to connect to it using remote desktop. When I attempt to start using vncservercommand I get the below too early exit code
hd2900@hd2900:~/.vnc$ vncserver

...

---
I have a Ubuntu 21.10 headless and I need to connect to it using remote desktop. When I attempt to start using `vncserver`command I get the below too early exit code

```
hd2900@hd2900:~/.vnc$ vncserver

New Xtigervnc server 'hd2900:1 (hd2900)' on port 5901 for display :1.
Use xtigervncviewer -SecurityTypes VncAuth -passwd /home/hd2900/.vnc/passwd :1 to connect to the VNC server.


=================== tail /home/hd2900/.vnc/hd2900:5901.log ===================
==============================================================================

Session startup via '/home/hd2900/.vnc/xstartup' cleanly exited too early (< 3 seconds)!

Maybe try something simple first, e.g.,
    tigervncserver -xstartup /usr/bin/xterm
The X session cleanly exited!
Killing Xtigervnc process ID 10156... success!
hd2900@hd2900:~/.vnc$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 21.10
Release:    21.10
Codename:   impish
```

My xstartup file is configured as

```
cat xstartup 
#!/bin/sh
# Start Gnome 3 Desktop 
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
vncconfig -iconic &
dbus-launch --exit-with-session gnome-session &
```

The VNC was set up by

```
apt install ubuntu-gnome-desktop
apt install tigervnc-standalone-server
```

Then I set up the password using `vncpasswd` command followed by `vncserver` to command to launch the server.

asked Nov 12, 2021 at 14:08

[

![jxw's user avatar](https://www.gravatar.com/avatar/b6c228d5862cf688930535dc433c194c?s=64&d=identicon&r=PG&f=y&so-version=2)

](https://askubuntu.com/users/850986/jxw)

1

```
tigervncserver -xstartup /usr/bin/gnome-session
```

will work. Indeed all you need to do is to remove **&** from the last line:

```
dbus-launch --exit-with-session gnome-session
```

Looks like newer versions of tigervncserver expects the ~/.vnc/xstartup (or ~/.vnc/Xtigervnc-session) script to stay in foreground. (I am on Ubuntu 21.10 and the ending & is the problem. On 20.04LTS the ending & is not an issue.)

answered Jan 18, 2022 at 23:00

[

![fchen's user avatar](https://www.gravatar.com/avatar/7591c3ce29ddc08c68ee882c9c8dcbd3?s=64&d=identicon&r=PG)

](https://askubuntu.com/users/451019/fchen)

[fchen](https://askubuntu.com/users/451019/fchen)fchen

1581 silver badge8 bronze badges
