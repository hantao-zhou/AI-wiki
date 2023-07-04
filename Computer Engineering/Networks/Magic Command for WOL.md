# Check MAC

You can use the `ifconfig` command to check the MAC address of a network interface in Linux. Here are the steps:

1. Open a terminal window.
2. Type the following command and press Enter: 

```
ifconfig
```

3. Look for the network interface for which you want to check the MAC address. It is usually named `eth0`, `eth1`, or `wlan0`, depending on whether you are using a wired or wireless network interface.
4. Find the line that starts with `ether` under the network interface you want to check. The MAC address is listed next to `ether`.

Here is an example of what the output might look like:

```
eth0      Link encap:Ethernet  HWaddr 00:11:22:33:44:55
          inet addr:192.168.1.2  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::211:22ff:fe33:4455/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:100 errors:0 dropped:0 overruns:0 frame:0
          TX packets:100 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:10000 (10.0 KB)  TX bytes:10000 (10.0 KB)
          Interrupt:20 Memory:d4500000-d4520000 

```

In this example, the MAC address of `eth0` is `00:11:22:33:44:55`.

# WOL command

Sure, here's a sample Bash script that you can use to send a Wake-on-LAN (WoL) magic packet to a specific MAC address:

```
#!/bin/bash

# Set the MAC address of the target machine
MAC_ADDRESS="1c:69:7a:5d:ad:f7"

# Construct the WoL magic packet
MAGIC_PACKET=$(printf "FF%.0s" {1..6}; printf "$MAC_ADDRESS%.0s" {1..16})

# Send the WoL packet to the broadcast address on the local network
sudo wakeonlan -i 192.168.0.255 $MAC_ADDRESS
```

Here's a breakdown of what each line does:

- The first line (`#!/bin/bash`) is called the shebang and specifies that this script should be executed as a Bash script.
- The second line sets the MAC address of the target machine to the variable `$MAC_ADDRESS`.
- The third line constructs the WoL magic packet by concatenating a string of `FF` bytes (which is the synchronization stream that WoL devices look for), followed by the MAC address of the target machine repeated 16 times. This constructs a 102-byte packet that should wake up the target machine.
- The fourth line sends the WoL packet using the `wakeonlan` command, which should be installed on most Linux systems. The `-i` option specifies the network interface to use (in this case, the broadcast address of the local network), and `$MAC_ADDRESS` specifies the target MAC address.

You can save this script to a file (e.g., `wol.sh`), make it executable using `chmod +x wol.sh`, and then run it using `./wol.sh`. Note that you may need to run this script with root privileges (`sudo`) in order to send the WoL packet.