Sure, here's an example command to mount a Samba share from the IP address 192.168.0.100 using the "mount.cifs" command in Bash:

```sh
sudo mount -t cifs //192.168.0.100/sharename /mnt/mountpoint -o username=sambausername,password=sambapassword
```

Here's what each part of the command does:

- `sudo`: Runs the command as the superuser, which is required to mount the Samba share.
- `mount`: The command to mount a filesystem.
- `-t cifs`: Specifies that we want to mount a Samba share using the CIFS protocol.
- `//192.168.0.100/sharename`: The network location of the Samba share to mount. Replace "sharename" with the name of the share you want to mount.
- `/mnt/mountpoint`: The local directory where the Samba share will be mounted. This directory must exist before you run the command.
- `-o username=sambausername,password=sambapassword`: Optional parameters that specify the username and password to use when connecting to the Samba share. Replace "sambausername" and "sambapassword" with the actual username and password for the Samba share. If you don't specify these parameters, you will be prompted to enter your username and password when you run the command.

If the ownership of the mount directory changes from the desired user, such as "dijinli", to the root user after mounting the Samba share, it is likely that the mount options are causing the issue.

Here are a few steps you can try to fix the issue:

1. Unmount the Samba share if it is currently mounted:

```
sudo umount /mnt/samba_share
```

Replace "/mnt/samba_share" with the path to the mount directory.

2. Use the `mount` command with the `uid`, `gid`, and `file_mode` options to set the ownership and permissions of the mounted files. Here is an example command:

```
sudo mount -t cifs //samba_server/share /mnt/samba_share -o username=user,password=pass,uid=dijinli,gid=dijinli,file_mode=0777,dir_mode=0777,rw
```

Replace "samba_server" with the hostname or IP address of the Samba server, "share" with the name of the shared directory, "user" and "pass" with the appropriate login credentials, and "/mnt/samba_share" with the path to the directory you created in step 1.

The `uid` and `gid` options specify the user and groupIDs that should own the files and directories on the mounted share. The `file_mode` and `dir_mode` options specify the file and directory permissions for the mountedshare. The `rw` option specifies that the share should be mounted with read/write permissions.

3. Remount the Samba share using the modified `mount` command.

After completing these steps, the mount directory should be owned by the user "dijinli" and you should be able to read from and write to the Samba share from your Ubuntu system without losing ownership of the mount directory.

Note that modifying file or directory permissions can have security implications, so you should carefully consider the risks before making any changes.