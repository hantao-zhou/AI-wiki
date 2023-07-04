You can use the `dd` command in the Terminal to test the write speed of a drive on your Mac. Here is an example command:

```
dd if=/dev/zero of=/Volumes/OS/testfile bs=1m count=1000
```

Replace `[DriveName]` with the name of the drive you want to test and adjust the `count` parameter as needed to specify the size of the test file (in this example, it will be 1 GB). 

This command writes a file filled with zeros (`/dev/zero`) to the specified drive and measures the time it takes to complete. The output of the command will show the write speed in bytes per second. Keep in mind that this test will overwrite any existing data on the drive, so be sure to back up any important files before running the command.