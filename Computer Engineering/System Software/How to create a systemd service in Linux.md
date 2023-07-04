---
created: 2023-07-02T21:35:19 (UTC +08:00)
tags: []
source: https://linuxhandbook.com/create-systemd-services/
author: Pratham Patel
---

# How to create a systemd service in Linux

> ## Excerpt
> Learn the steps for creating systemd services in Linux with the practical example demonstrated in this tutorial.

---
Since its introduction in March 2010, people have had various opinions about systemd. But one thing that you cannot deny is that systemd is now present in almost _all_ Linux distributions!

Sure, there are Linux distributions that explicitly advertise usage of a different init system other than systemd, but those are very rare. Ubuntu, Fedora, RHEL, Debian, Pop!\_OS, openSUSE, Arch – all of them ship with systemd by default.

Since systemd is used so widely, it is worth taking a look at and learning about how to create a systemd services.

## What is a systemd service?

Simply put, a service is a "[background process](https://linuxhandbook.com/run-process-background/)" that is started or stopped based on certain circumstances. You are not required to manually start and/or stop it. A 'systemd service file' is a file that is written in a format such that systemd is able to parse and understand it, and later on do what you told it to do.

Technically what I am referring to as 'systemd service file' is actually called a 'systemd unit' file, but since this tutorial is about creating a service, I will continue referring to this as 'systemd service file'.

## Understanding the basic structure of a systemd service file

The systemd service file has three important and necessary sections. They are `[Unit]`, `[Service]` and `[Install]` sections. The systemd service file's extension is `.service` and we use the pound/hash symbol (`#`) for single line comments.

Below is an example of a systemd service file. Please note that this is _NOT_ an actual systemd service file. I have modified it so that it helps you understand.

```
[Unit]
Description=Apache web server
After=network.target
Before=nextcloud-web.service

[Service]
ExecStart=/usr/local/apache2/bin/httpd -D FOREGROUND -k start
ExecReload=/usr/local/apache2/bin/httpd -k graceful
Type=notify
Restart=always


[Install]
WantedBy=default.target
RequiredBy=network.target
```

This is the _most basic_ structure of a systemd service file. Let us understand what each of these words mean.

### The `[Unit]` section

The Unit section contains details and description about the unit itself. In our case, it contains details about the service. Details like 'what is its description', 'what are its dependencies' and more.

Below are the fields the Unit section has:

-   `Description`:- Human-readable title of the systemd service.
-   `After`:- Set dependency on a service. For example, if you are configuring Apache web server, you want the server to start after the network is online. This typically includes targets or other services.
-   `Before`:- Start current service before specified service. In this example, I tell that "I want Apache web server running before the service for Nextcloud is started". This is because, in my case, Nextcloud server depends on the Apache web server. This too, like `After`, includes targets or other services.

### The `[Service]` section

The Service section contains details about the execution and termination of service.

Below are the fields the Service section has:

-   `ExecStart`:- The command that needs to be executed when the service starts. In our case, we want the Apache server to start.
-   `ExecReload`:- This is an optional field. It specifies how a service is restarted. For services that perform disk I/O (especially writing to disk, like a database), it is best to gracefully kill them and start again. Use this field in case you wish to have a specific restart mechanism.
-   `Type`:- This indicates the start-up type of a process for a given systemd service. Options are `simple`, `exec`, `forking`, `oneshot`, `dbus`, `notify` and `idle`. (more info [here](https://www.freedesktop.org/software/systemd/man/systemd.service.html?ref=linuxhandbook.com#Options))
-   `Restart`:- This is another optional field but one that you will very likely use. This specifies if a service should be restarted--depending on circumstances--or not. The available options are `no`, `on-success`, `on-failure`, `on-abnormal`, `on-watchdog`, `on-abort` and `always`.

### The `[Install]` section

The Install section, as the name says, handles the installation of a systemd service/unit file. This is used when you run either `systemctl enable` and `systemctl disable` command for enabling or disabling a service.

Below are the fields the Install section has:

-   `WantedBy`:- This is similar to the `After` and `Before` fields, but the main difference is that this is used to specify systemd-equivalent "runlevels". The `default.target` is when all the system initialization is complete--when the user is asked to log in. Most user-facing services (like Apache, cron, GNOME-stuff, etc.) use this target.
-   `RequiredBy`:- This field might feel very similar to `WantedBy`, but the main difference is that this field specifies _hard dependencies_. Meaning, if a dependency, this service will fail.

What I have listed above, is only a _minimal_ example. There are loads of knobs that you can turn to customize your service depending on your environment and needs.

For a complete documentation about systemd, please [refer to this page](https://www.freedesktop.org/wiki/Software/systemd/?ref=linuxhandbook.com). This literally has _everything_ documented!

## Creating your own systemd service

Now that you know the structure of a basic systemd service file let us dive into creating your own systemd service.

For this example, I will create two systemd services. One that needs superuser privileges and other that is executed as a normal user.

The primary difference between a service being executed by root and a normal user is the **location of the systemd service file**.

### Systemd service for root user

I have written a script, that I want to run at the time of system boot, as the root user. The script is called `sys-update.sh`, and it's absolute file path is `/root/.scripts/sys-update.sh`; Below is the script:

```
#!/usr/bin/env bash

if [ ${EUID} -ne 0 ]
then
exit 1 # this is meant to be run as root
fi

apt-get update 1>/dev/null 2>>/root/logs/sys-update.log
```

Let us first understand what this script does. First, it will check if the user is root or not. If the user is the root user, then the `apt-get update` command will be executed. Any errors from the output of that command will be _appended_ to the `/root/logs/sys-update.log` file. And any additional output will be [redirected to the /dev/null file](https://linuxhandbook.com/redirect-dev-null/).

Let us create a systemd service file for this. But before that is done, one must konw _where to place the 'systemd service file' that needs superuser privileges_.

Usually, it is considered a good practice to put these systemd service files inside the `/etc/systemd/system/` directory.

Therefore, I will create a file `update-on-boot.service`; its full path being `/etc/systemd/system/update-on-boot.service`. Below are the contents of this service file:

```
[Unit]
Description=Keeping my sources fresher than Arch Linux
After=multi-user.target

[Service]
ExecStart=/usr/bin/bash /root/.scripts/sys-update.sh
Type=simple

[Install]
WantedBy=multi-user.target
```

This is a very simple systemd service file. All it does is use the bash interpreter to interpret the `/root/.script/sys-update.sh` script and execute it.

#### Enabling the service

Now that the systemd service file is ready and placed under the `/etc/systemd/system/` directory, let us look at how to enable it.

To tell systemd to read our service file, we need to issue the following command:

```
sudo systemctl daemon-reload
```

Doing so will make systemd aware of our newly created systemd service file.

Now, we can enable our systemd service. The syntax to do so is as following:

```
sudo systemctl enable SERVICE-NAME.service
```

In our case, the service is named `update-on-boot.service`, so I will run the following command:

```
sudo systemctl enable update-on-boot.service
```

Our service is now enabled. But how can we verify that? Below is the syntax for checking the status of a systemd service:

```
sudo systemctl is-enabled SERVICE-NAME.service
```

Since the service is named `update-on-boot.service`, I will change it accordingly. Below is the output of checking the status of the service:

```
$ sudo systemctl is-enabled update-on-boot.service
enabled
```

As the output suggests, our service--`update-on-boot.service`\--is enabled. Whoo!

[

Cloud IDE · Online Code Editor · Codeanywhere

Save time by deploying a development environment in seconds. Collaborate, code, learn, build, and run your projects directly from your browser.

![](https://codeanywhere.com/apple-touch-icon.png)Cloud IDE · Online Code Editor · CodeanywhereCodeanywhere

![](https://codeanywhere.com/img/backgrounds/codeanywhere-bg.jpg)

](https://codeanywhere.com/?ref=itsfoss)

### Systemd service for a normal user

Now that we just saw how to create a service that gets executed by the superuser and the process to enable it, let us do the same for a service that gets executed by a normal user.

Since the previous service starts at system start-up, let's create a script intended to run _before a shutdown_. I created a script named `big-uptime.sh`, its full path being `/home/pratham/.scripts/big-uptime.sh` and following are its contents:

```
#!/usr/bin/env bash

uptime | tee -a /home/pratham/logs/uptime.log
```

This is a simple script that appends the system uptime to the `/home/pratham/logs/uptime.log` file. A handy scoreboard!

Okay, now let's create a systemd service file for it. But before that is done, one must know where to place _a normal user's systemd service (unit) files_. Systemd service files belonging to a normal user go inside the `~/.config/systemd/user/` directory.

Usually, the `~/.config/systemd/user/` directory will not exist, so it needs to be created. Do so with the following command:

```
mkdir -p ~/.config/systemd/user
```

Now that our systemd user directory is created, let's create a service too.

Below are the contents of my systemd service file for user `pratham`:

```
[Unit]
Description=Log uptime in scoreboard
DefaultDependencies=no
Before=shutdown.target

[Service]
Type=oneshot
ExecStart=/usr/bin/bash /home/pratham/.scripts/big-uptime.sh
TimeoutStartSec=0

[Install]
WantedBy=shutdown.target
```

There are a few key differences between this systemd service file and the previous ones. The biggest one being the `Type` of this systemd service being "_oneshot_". This is best [explained here](https://trstringer.com/simple-vs-oneshot-systemd-service?ref=linuxhandbook.com#follow-up-units-timing), but the TL;DR is that if the `Type` is "_oneshot_", systemd makes sure that no services are being started/stopped until our service is fully initialized or until our service has started.

I will save this systemd service file as `~/.config/systemd/user/scoreboard.service`.

#### Enabling the service

Now that our service file is placed inside the `~/.config/systemd/user/` directory, let us enable it.

But before we enable our service, just like we did with the systemd root service, we need to reload systemd in a way that it is made aware of our newly created systemd service file. That will be done by running the following command:

```
systemctl --user daemon-reload
```

This time, we don't need the `sudo` command, since we don't need superuser privileges. But what we need is the `--user` option. Below is the syntax to enable a user service:

```
systemctl --user enable SERVICE-NAME.service
```

I will use the above command and modify it accordingly to enable the `scoreboard.service` service.

```
systemctl --user enable scoreboard.service
```

Now that the service is enabled, let's verify it! The syntax to check the status of a systemd user service is:

```
systemctl --user is-enabled SERVICE-NAME.service
```

Using that syntax, I get the following output as the status of my service:

```
$ systemctl --user is-enabled scoreboard.service
enabled
```

As evident from the output, it is verified that the systemd user service is enabled. Yayyy!!!

[

How to List Systemd Services in Linux \[Beginner’s Guide\]

Check what systemd services run on your Linux system in this tutorial.

![](https://linuxhandbook.com/content/images/size/w256h256/2021/08/Linux-Handbook-New-Logo.png)Linux HandbookAbhishek Prakash

![](https://linuxhandbook.com/content/images/2020/07/list-systemd-services.png)

](https://linuxhandbook.com/systemd-list-services/)

## Conclusion

This article discusses some key aspects of creating your own systemd service: the anatomy of a systemd service file, where to place it, reloading systemd to make it aware of your newly created service, enabling the service and finally, checking it's status.

Skip![arrow](https://sdk.apester.com/assets/iconRightArrow.svg)

Skip

Skip ad in

![arrow](https://sdk.apester.com/assets/iconRightArrow.svg)


# based on home

Assuming that you are using a Linux-based operating system that uses systemd as its init system and that the path to the executable file is correct, you can create a systemd service file with the following steps:

1. Open a terminal window and enter the following command to create a new service file:

   ```
   sudo nano /etc/systemd/system/clash.service
   ```

   This will open the Nano text editor with a new file named `clash.service` in the `/etc/systemd/system` directory.

2. Copy and paste the following contents into the file:

   ````
   [Unit]
   Description=Clash Service
   After=network.target
   
   [Service]
   Type=simple
   WorkingDirectory=/home/dijinli/
   ExecStart=/home/dijinli/clash-linux-arm64-v1.17.0
   
   [Install]
   WantedBy=multi-user.target
   ```

   This defines a new systemd unit called `clash.service` that will start the `clash-linux-arm64-v1.17.0` executable on startup.

3. Save and close the file by pressing `Ctrl+X`, then `Y`, and then `Enter`.

4. Reload systemd to read the new service file:

   ````
   sudo systemctl daemon-reload
   ```

5. Enable the `clash.service` unit to start on boot:

   ````
   sudo systemctl enable clash.service
   ```

6. Start the `clash.service` unit:

   ```
   sudo systemctl start clash.service
   ```

   This will start the `clash-linux-arm64-v1.17.0` executable and ensure that it starts automatically on subsequent reboots.



## User side

[Unit]
Description=Clash Service
After=network.target

[Service]
Type=simple
WorkingDirectory=/home/dijinli/
ExecStart=/home/dijinli/clash-linux-arm64-v1.17.0

[Install]
WantedBy=default.target

```
[Unit]
Description=Clash Service
After=network.target

[Service]
Type=simple
WorkingDirectory=/home/dijinli/
ExecStart=/home/dijinli/clash-linux-arm64-v1.17.0

[Install]
WantedBy=default.target
```

