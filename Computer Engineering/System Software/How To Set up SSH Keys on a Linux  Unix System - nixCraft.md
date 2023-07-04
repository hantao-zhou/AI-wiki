---
created: 2023-06-27T20:02:46 (UTC +08:00)
tags: []
source: https://www.cyberciti.biz/faq/how-to-set-up-ssh-keys-on-linux-unix/
author: Vivek Gite
---

# How To Set up SSH Keys on a Linux / Unix System - nixCraft

> ## Excerpt
> Explains how to set up SSH Keys for public key authentication on a Linux, FreeBSD, OpenBSD, OS X/macOS or Unix based systems.

---
[![See all OpenBSD related FAQ](https://www.cyberciti.biz/media/new/category/old/openbsd_logo_sm.png)](https://www.cyberciti.biz/faq/category/openbsd/ "See all OpenBSD related FAQ")

I recently read that SSH keys provide a secure way of logging into a Linux and Unix-based server. How do I set up SSH keys on a Linux or Unix based systems? In SSH for Linux/Unix, how do I set up public key authentication?  
  
This page explains a public key and shows you how to set up SSH keys on a Linux or Unix-like server. I am assuming that you are using Linux or Unix-like server and client with the following software:

  

nixCraft: Privacy First, Reader Supported

-   **nixCraft is a one-person operation**. I create all the content myself, with no help from AI or ML. I try to keep the content is accurate and up-to-date.
-   **Your privacy is my top priority**. I don’t track you, show you ads, or spam you with emails. Just pure content in the true spirit of Linux and FLOSS.
-   **Fast and clean browsing experience**. nixCraft is designed to be fast and easy to use. You won’t have to deal with pop-ups, ads, cookie banners or other distractions.
-   **Support independent content creators**. nixCraft is a labor of love, and it’s only possible thanks to the support of our readers. If you enjoy the content, please consider supporting us on Patreon or sharing this page on social media or your blog. Every bit helps.

[Join **Patreon** ➔](https://www.patreon.com/nixcraft)

-   OpenSSH SSHD server
-   OpenSSH ssh client and friends on Linux (Ubuntu, Debian, {Free,Open,Net}BSD, RHEL, CentOS, MacOS/OSX, AIX, HP-UX and co).

| Tutorial details |
| --- |
| Difficulty level | [Easy](https://www.cyberciti.biz/faq/tag/easy/ "See all Easy Linux / Unix System Administrator Tutorials") |
| Root privileges | No |
| Requirements | Linux terminal |
| Category | Terminal/ssh |
| Prerequisites | OpenSSH client and server |
| OS compatibility | \*BSD • [Linux](https://www.cyberciti.biz/faq/category/linux/ "See all Linux distributions tutorials") • [macOS](https://www.cyberciti.biz/faq/category/mac-os-x/ "See all macOS (OS X) tutorials") • [Unix](https://www.cyberciti.biz/faq/category/unix/ "See all Unix tutorials") • WSL |
| Est. reading time | 7 minutes |

## What is a public key authentication?

OpenSSH server supports various authentication schema. The two most popular are as follows:

1.  Passwords based authentication
2.  Public key based authentication. It is an alternative security method to using passwords. This method is recommended on a VPS, cloud, dedicated or even home based server.

## How to set up SSH keys

Steps to setup secure ssh keys:

1.  Create the ssh key pair using **ssh-keygen** command.
2.  Copy and install the public ssh key using **ssh-copy-id** command on a Linux or Unix server.
3.  Add yourself to sudo or wheel group admin account.
4.  Disable the password login for root account.
5.  Test your password less ssh keys login using **ssh user@server-nam**e command.

Let us see all steps in details.

## How do I set up public key authentication?

You must generate both a public and a private key pair. For example:  

![Fig.01: Our sample ssh set up keys](https://www.cyberciti.biz/media/new/faq/2014/03/ssh-welcome-setup.png)

Fig.01: Our sample setup

Where,

-   server1.cyberciti.biz – You store your public key on the remote hosts and you have an accounts on this Linux/Unix based server.
-   client1.cyberciti.biz – Your private key stays on the desktop/laptop/ computer (or local server) you use to connect to server1.cyberciti.biz server. Do not share or give your private file to anyone.

In public key based method you can log into remote hosts and server, and transfer files to them, without using your account passwords. Feel free to replace server1.cyberciti.biz and client1.cyberciti.biz names with your actual setup. Enough talk, let’s set up public key authentication. Open the Terminal and type following commands if .ssh directory does not exists:

```
mkdir -p $HOME/.ssh
chmod 0700 $HOME/.ssh
```

## 1: Create the key pair

On the computer (such as client1.cyberciti.biz), generate a key pair for the protocol.

Sample outputs:

```
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/vivek/.ssh/id_rsa): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /Users/vivek/.ssh/id_rsa.
Your public key has been saved in /Users/vivek/.ssh/id_rsa.pub.
The key fingerprint is:
80:5f:25:7c:f4:90:aa:e1:f4:a0:01:43:4e:e8:bc:f5 vivek@desktop01
The key's randomart image is:
+--[ RSA 2048]----+
| oo    ...+.     |
|.oo  .  .ooo     |
|o .o. . .o  .    |
| o ...+o.        |
|  o .=.=S        |
| .  .Eo .        |
|                 |
|                 |
|                 |
+-----------------+

```

You need to set the Key Pair location and name. I recommend you use the default location if you do not yet have another key there, for example: $HOME/.ssh/id\_rsa. You will be prompted to supply a passphrase (password) for your private key. I suggest that you setup a passphrase when prompted. You should see two new files in $HOME/.ssh/ directory:

1.  $HOME/.ssh/id\_rsa– contains your private key.
2.  $HOME/.ssh/id\_rsa.pub – contain your public key.

### Optional syntax for advance users

The following syntax specifies the 4096 of bits in the RSA key to creation (default 2048):  
`$ ssh-keygen -t rsa -b 4096 -f ~/.ssh/vps-cloud.web-server.key -C "My web-server key"`  
Where,

-   **\-t rsa** : Specifies the type of key to create. The possible values are “rsa1” for protocol version 1 and “dsa”, “ecdsa”, “ed25519”, or “rsa” for protocol version 2.
-   **\-b 4096** : Specifies the number of bits in the key to create
-   **\-f ~/.ssh/vps-cloud.web-server.key** : Specifies the filename of the key file.
-   **\-C "My web-server key"** : Set a new comment.

## 2: Install the public key in remote server

Use scp or ssh-copy-id command to copy your public key file (e.g., $HOME/.ssh/id\_rsa.pub) to your account on the remote server/host (e.g., nixcraft@server1.cyberciti.biz). To do so, enter the following command on your client1.cyberciti.biz:

```
ssh-copy-id -i $HOME/.ssh/id_rsa.pub user@server1.cyberciti.biz
```

OR just copy the public key in remote server as authorized\_keys in ~/.ssh/ directory:

```
scp $HOME/.ssh/id_rsa.pub user@server1.cyberciti.biz:~/.ssh/authorized_keys
```

### A note about appending the public key in remote server

On some system ssh-copy-id command may not be installed, so use the following commands (when prompted provide the password for remote user account called vivek) to install and append the public key:

```
## First create .ssh directory on server ##
ssh vivek@server1.cyberciti.biz "umask 077; test -d .ssh || mkdir .ssh"
 
## cat local id.rsa.pub file and pipe over ssh to append the public key in remote server ##
cat $HOME/.ssh/id_rsa.pub | ssh vivek@server1.cyberciti.biz "cat >> .ssh/authorized_keys"
```

## 3: Test it (type command on client1.cyberciti.biz)

The syntax is as follows for the ssh command:

```
ssh user@server1.cyberciti.biz
ssh user@your-server-ip-address
ssh -i ~/.ssh/your-key user@your-server-ip-address
```

Or copy a text file called foo.txt:

```
scp foo.txt user@server1.cyberciti.biz:/tmp/
```

You will be prompted for a passphrase. To get rid of passphrase whenever you log in the remote host, try ssh-agent and ssh-add commands.

### What are ssh-agent and ssh-add, and how do I use them?

To get rid of a passphrase for the current session, add a passphrase to ssh-agent and you will not be prompted for it when using ssh or scp/sftp/rsync to connect to hosts with your public key. The syntax is as follows:

Type the ssh-add command to prompt the user for a private key passphrase and adds it to the list maintained by ssh-agent command:

Enter your private key passphrase. Now try again to log into user@server1.cyberciti.biz and you will not be prompted for a password:

```
ssh user@server1.cyberciti.biz
```

One can list public key parameters of all identities with the \-L option:  
`$ ssh-add -L`  
Deleting all private keys from the ssh-agent can be done with the \-D option as follows:  
`$ ssh-add -D`  
When you log out kill the ssh agent, run:  
`kill $SSH_AGENT_PID`  
You can also add something like the below to your shell startup to kill ssh-agent at logout:  
`$ trap "kill $SSH_AGENT_PID" 0`

## 4: Disable the password based login on a server

Login to your server, type:  
`## client commands ##   $ eval $(ssh-agent)   $ ssh-add   $ ssh user@server1.cyberciti.biz`  
Edit /etc/ssh/sshd\_config on server1.cyberciti.biz using a text editor such as nano or vim:

**Warning**: Make sure you add yourself to sudoers files. Otherwise you will not able to login as root later on. See “[How To Add, Delete, and Grant Sudo Privileges to Users on a FreeBSD Server](https://www.cyberciti.biz/faq/how-to-add-delete-grant-sudo-privileges-to-users-on-freebsd-unix-server/)” for more info.

`$ sudo vim /etc/ssh/sshd_config`  
OR [directly jump to PermitRootLogin line](https://www.cyberciti.biz/faq/linux-unix-command-open-file-linenumber-function/) using a vim text editor:  
`$ sudo vim +/PermitRootLogin /etc/ssh/sshd_config`  
Find PermitRootLogin and set it as follows:

```
PermitRootLogin no
```

Save and close the file. I am [going to add a user named vivek to sudoers on Ubuntu Linux](https://www.cyberciti.biz/faq/how-to-create-a-sudo-user-on-ubuntu-linux-server/):  
`# adduser vivek`  
Finally, [reload/restart the sshd server](https://www.cyberciti.biz/faq/howto-restart-ssh/), type command as per your Linux/Unix version:

```
## CentOS/RHEL/Fedora (older version) Linux server reload sshd ##
sudo service sshd reload
 
## CentOS/RHEL/Fedora (latest version i.e. systemd based) Linux server reload sshd ##
sudo systemctl reload sshd 
 
## Debian/Ubuntu Linux (older version) server reload sshd ##
sudo /etc/init.d/ssh reload
 
## Debian/Ubuntu Linux (systemd based latest) server reload sshd ##
sudo systemctl reload ssh 
 
## Generic Unix method to reload sshd ##
sudo kill -HUP `cat /var/run/sshd.pid`
OR
sudo kill -HUP $(cat /var/run/sshd.pid)
```

## 5: How to add or replace a passphrase for an existing private key?

To [to change your passphrase type the following command](https://www.cyberciti.biz/faq/howto-ssh-changing-passphrase/):  
`$ ssh-keygen -p`

## 6: How do I backup an existing private/public key?

Just copy files to your backup server or external USB pen/hard drive:

```
## Copy files to  home based nas server ##
rsync -avr $HOME/.ssh user@home.nas-server:/path/to/encrpted/nas/partition/
 
## Copy files to  usb pen drive mounted at /mnt/usb ##
cp -avr $HOME/.ssh/ /mnt/usb/backups/
```

## How do I protect my ssh keys?

1.  Always use a strong passphrase.
2.  Do not share your private keys anywhere online or store in insecure cloud storage.
3.  Restrict privileges of the account.

## How do I create and setup an OpenSSH config file to create shortcuts for servers I frequently access?

See [how to create and use an OpenSSH ssh\_config file for more](https://www.cyberciti.biz/faq/create-ssh-config-file-on-linux-unix/) info.

### Conclusion

This page explained how to set up ssh keys for authentication purposes. Read the following man pages using the [man command](https://bash.cyberciti.biz/guide/Man_command "man command in Linux with Examples - Linux Shell Scripting Tutorial") or [help command](https://bash.cyberciti.biz/guide/Help_command "Help command - Linux Bash Shell Scripting Tutorial Wiki"). For example:  
`$ man ssh   $ man ssh-agent   $ man ssh-keygen`  
For more info see the following resources:

-   [keychain: Set Up Secure Passwordless SSH Access For Backup Scripts](https://www.cyberciti.biz/faq/ssh-passwordless-login-with-keychain-for-scripts/)
-   [Ubuntu / Debian Linux Server Install Keychain SSH Key Manager For OpenSSH](https://www.cyberciti.biz/faq/ubuntu-debian-linux-server-install-keychain-apt-get-command/)
-   OpenSSH project [homepage here](https://www.openssh.com/).

And, there you have it, ssh set up with public key based authentication for Linux or Unix-like systems.  

This entry is **2** of **23** in the **Linux/Unix OpenSSH Tutorial** series. Keep reading the rest of the series:

1.  [Top 20 OpenSSH Server Best Security Practices](https://www.cyberciti.biz/tips/linux-unix-bsd-openssh-server-best-practices.html "Top 20 OpenSSH Server Best Security Practices")
2.  How To Set up SSH Keys on a Linux / Unix System
3.  [OpenSSH Config File Examples For Linux / Unix Users](https://www.cyberciti.biz/faq/create-ssh-config-file-on-linux-unix/ "OpenSSH Config File Examples For Linux / Unix Users")
4.  [Audit SSH server and client config on Linux/Unix](https://www.cyberciti.biz/tips/how-to-audit-ssh-server-and-client-config-on-linux-unix.html "How to audit SSH server and client config on Linux/Unix")
5.  [How to install and upgrade OpenSSH server on FreeBSD](https://www.cyberciti.biz/faq/how-to-install-and-upgrade-openssh-server-on-freebsd/ "How to install and upgrade OpenSSH server on FreeBSD")
6.  [Ubuntu Linux install OpenSSH server](https://www.cyberciti.biz/faq/ubuntu-linux-install-openssh-server/ "Ubuntu Linux install OpenSSH server")
7.  [Install OpenSSH server on Alpine Linux (including Docker)](https://www.cyberciti.biz/faq/how-to-install-openssh-server-on-alpine-linux-including-docker/ "How to install OpenSSH server on Alpine Linux (including Docker)")
8.  [Debian Linux Install OpenSSH SSHD Server](https://www.cyberciti.biz/faq/debian-linux-install-openssh-sshd-server/ "How to install OpenSSH server on Debian Linux 9/10/11")
9.  [Configure OpenSSH To Listen On an IPv6 Address](https://www.cyberciti.biz/faq/linux-bsd-unix-configuring-ssh-listen-ipv6-addresses/ "Linux/UNIX: Configure OpenSSH To Listen On an IPv6 Address")
10.  [OpenSSH Server connection drops out after few minutes of inactivity](https://www.cyberciti.biz/tips/open-ssh-server-connection-drops-out-after-few-or-n-minutes-of-inactivity.html "OpenSSH Server connection drops out after inactivity problem")
11.  [Display banner/message before OpenSSH authentication](https://www.cyberciti.biz/howto/quick-tip-display-banner-message-before-openssh-authentication/ "Display banner/message before OpenSSH auth on Linux / Unix")
12.  [Force OpenSSH (sshd) to listen on selected multiple IP address only](https://www.cyberciti.biz/tips/howto-openssh-sshd-listen-multiple-ip-address.html "How to force OpenSSH (SSHD) to listen to multiple IP addresses")
13.  [OpenSSH Change a Passphrase With ssh-keygen command](https://www.cyberciti.biz/faq/howto-ssh-changing-passphrase/ "OpenSSH Change a Passphrase With ssh-keygen command")
14.  [Reuse SSH Connection To Speed Up Remote Login Process Using Multiplexing](https://www.cyberciti.biz/faq/linux-unix-reuse-openssh-connection/ "How To Reuse SSH Connection With Multiplexing To Speed Up")
15.  [Check Syntax Errors before Restarting SSHD Server](https://www.cyberciti.biz/tips/checking-openssh-sshd-configuration-syntax-errors.html "OpenSSH Tip: Check Syntax Errors before Restarting SSHD Server")
16.  [Change the ssh port on Linux or Unix server](https://www.cyberciti.biz/faq/howto-change-ssh-port-on-linux-or-unix-server/ "How to change the ssh port on Linux or Unix server")
17.  [OpenSSH Deny or Restrict Access To Users and Groups](https://www.cyberciti.biz/tips/openssh-deny-or-restrict-access-to-users-and-groups.html "OpenSSH Deny or Restrict Access To Users and Groups")
18.  [Linux OpenSSH server deny root user access / log in](https://www.cyberciti.biz/faq/linux-unix-openssh-block-root-user/ "Linux OpenSSH server deny root user access / log in")
19.  [Disable ssh password login on Linux to increase security](https://www.cyberciti.biz/faq/how-to-disable-ssh-password-login-on-linux/ "How to disable ssh password login on Linux to increase security")
20.  [SSH ProxyCommand example: Going through one host to reach server](https://www.cyberciti.biz/faq/linux-unix-ssh-proxycommand-passing-through-one-host-gateway-server/ "SSH ProxyCommand example: Going through one host to reach another server")
21.  [OpenSSH Multiplexer To Speed Up OpenSSH Connections](https://www.cyberciti.biz/faq/linux-unix-osx-bsd-ssh-multiplexing-to-speed-up-ssh-connections/ "Linux / Unix: OpenSSH Multiplexer To Speed Up OpenSSH Connections")
22.  [Install / Append SSH Key In A Remote Linux / UNIX Servers Authorized\_keys](https://www.cyberciti.biz/faq/install-ssh-identity-key-remote-host/ "Install / Append SSH Key In A Remote Linux / UNIX Servers Authorized_keys")
23.  [Use ssh-copy-id with an OpenSSH Server Listening On a Different Port](https://www.cyberciti.biz/faq/use-ssh-copy-id-with-an-openssh-server-listing-on-a-different-port/ "Use ssh-copy-id with an OpenSSH Server Listening On a Different Port")

### Did you notice? 🧐

nixCraft is ad-free to protect your privacy and security. We rely on reader support to keep the site running. Please consider subscribing to us on Patreon or supporting us with a one-time support through PayPal. Your support will help us cover the costs of hosting, CDN, DNS, and tutorial creation.

[Join **Patreon** ➔](https://www.patreon.com/nixcraft)      [**PayPal** ➔](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LJF8UGD7QKF3U)
