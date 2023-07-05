
# General Speaking

## shell

```bash
sudo apt install openssh-server
sudo apt install curl
sudo apt install ethtool
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## GUI

1. set the default keyring to None
2. set sharing to on
	1. RDP
	2. SSH
3. set never sleep, never close monitor, never suspend

## Config Systemd

### WOL enable everytime

[[How to create a systemd service in Linux]]
[[How to Set Up and Use Wake-on-LAN]]

#### systemd file

```bash
[Unit]
Description=Keeping my sources fresher than Arch Linux
After=multi-user.target

[Service]
ExecStart=/usr/bin/bash /root/.scripts/sys-update.sh
Type=simple

[Install]
WantedBy=multi-user.target
```

# Special Network situations

