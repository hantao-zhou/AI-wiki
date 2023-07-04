# config file

for 22.0+ at ~/.vnc/xstartup

```bash
#!/bin/sh
# Start Gnome 3 Desktop
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
vncconfig -iconic &
dbus-launch --exit-with-session gnome-session
```

# bugs

## not permitted

use chmod +x pls

## no dbus-lauch

`**sudo apt install dbus-x11**`