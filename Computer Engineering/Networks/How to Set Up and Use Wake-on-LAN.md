---
created: 2023-07-02T20:49:41 (UTC +08:00)
tags: []
source: https://www.lifewire.com/wake-on-lan-4149800
author: Tim Fisher
---

# How to Set Up and Use Wake-on-LAN

> ## Excerpt
> Wake-on-LAN (WoL) is a feature that lets you turn on your computer remotely. Here's how to set up Wake-on-LAN and use it to turn on your PC.

---
### What to Know

-   Wake-on-LAN allows a computer to be turned on remotely, whether it's hibernating, sleeping, or completely off.
-   First set up the motherboard by configuring WoL through BIOS, then log into the OS and make changes there.
-   The first step with the BIOS is valid for every computer; then follow instructions for your operating system.

This article explains how to set up WoL in two steps for Windows, MacOS, and Linux. It also covers how to use Wake-on-LAN once set up, as well as how to troubleshoot common issues that can arise.

## Two-step WoL Setup

It doesn't matter what operating system the computer eventually boots into (Windows, Mac, Ubuntu, or another Linux distribution), Wake-on-LAN can turn on any computer that receives the magic packet. The computer hardware must support Wake-on-LAN with a compatible BIOS and [network interface card](https://www.lifewire.com/definition-of-adapter-817585).

Wake-on-LAN goes by other names, but all mean the same thing. These names include remote wake-up, power on by LAN, wake up on LAN, and resume by LAN.

Enabling Wake-on-LAN is done in two steps. The first sets up the motherboard by configuring Wake-on-LAN through BIOS before the operating system boots, and the second logs into the operating system and makes changes there.

The first step with the BIOS is valid for every computer, but after following the BIOS setup, skip to your operating system instructions, whether it be for Windows, Mac, or Linux.

## Step 1: BIOS Setup

The first thing you need to do to enable WoL is to set up BIOS correctly so that the software can listen for incoming wake up requests.

Every manufacturer has unique steps, so what you see below may not describe your setup exactly. If you need more help, [find your BIOS manufacturer](https://www.lifewire.com/how-to-check-the-current-bios-version-on-your-computer-2617974) and check their website for a user manual on how to get into BIOS and find the WoL feature.

1.  [Enter BIOS](https://www.lifewire.com/how-to-enter-bios-2624481) instead of booting to your operating system.
    
2.  Look for a section that pertains to power, such as Power Management. This may be under an Advanced section. Other manufacturers might call it Resume On LAN, such as on the Mac_._
    
    Most BIOS screens have a help section off to the side that describes what each setting does when enabled. It's possible that the name of the WoL option in your computer's BIOS isn't clear.
    
    If the mouse doesn't work in BIOS, use the keyboard to navigate. Not all BIOS setup pages support the mouse.
    
3.  Once you find the WoL setting, press **Enter** to either immediately toggle it on or to show a menu where you can toggle it on and off, or enable it and disable it.
    
4.  Save the changes. This isn't the same on every computer, but on many, the **F10** key saves and exits BIOS. The bottom of the BIOS screen gives instructions about saving and exiting.
    

## Step 2: Windows WoL Setup

[Windows Wake-on-LAN](https://learn.microsoft.com/en-us/previous-versions/windows/hardware/wireless/wake-on-wireless-lan) is set up through Device Manager. There are a few different settings to enable here:

1.  [Open Device Manager](https://www.lifewire.com/how-to-open-device-manager-2626075).
    
2.  Find and open **Network adapters**. Ignore Bluetooth connections and virtual adapters. Double-click (or double-tap) **Network adapters** or select the **+** or **\>** button next to it to expand that section.
    
3.  Right-click or tap-and-hold the adapter that belongs to the active internet connection. Examples of what you might see are **Realtek PCIe GBE Family Controller** or **Intel Network Connection**, but it varies depending on the computer.
    
4.  Choose **Properties**.
    
5.  Open the **Advanced** tab.
    
6.  Under the **Property** section, select **Wake on Magic Packet**. If you can't find this, skip to Step 8; Wake-on-LAN might work anyway.
    
7.  From the **Value** menu on the right, choose **Enabled**.
    
8.  Open the **Power Management** tab. It might be called **Power**, depending on the [version of Windows](https://www.lifewire.com/what-version-of-windows-do-i-have-2624927) or network card.
    
9.  Enable **Allow this device to wake the computer** and **Only allow a magic packet to wake the computer**. These settings might be under a section called Wake-on-LAN and be a single setting called **Wake on Magic Packet**.
    
    If these options don't appear or are greyed out, [update the network adapter's device drivers](https://www.lifewire.com/how-to-update-drivers-in-windows-2619214). However, it's possible that the network card doesn't support WoL. This is most likely true for wireless network interface cards (NICs).
    
10.  Select **OK** to save the changes and exit that window. You can also close Device Manager.
    

## Step 2: macOS Wake-on-Demand Setup

Mac Wake-on-Demand should be enabled by default in version 10.6 or later. Otherwise, follow these steps:

1.  Go to the Apple menu, then select **System Preferences**.
    
2.  In the **System Preferences** window, select **Energy Saver**, or from the top menu go to **View** \> **Energy Saver**.
    
3.  Select the **Wake for network access** check box. This option is called **Wake for network access** only if your Mac supports Wake on Demand over Ethernet and AirPort. If Wake on Demand only works over one of these two, it's called **Wake for Ethernet network access** or **Wake for Wi-Fi network access**.
    

## Step 2: Linux WoL Setup

The steps for turning on Wake-on-LAN for Linux are most likely not the same for every Linux OS, but here's how to do it in Ubuntu:

1.  Search for and open **Terminal**, or press the **Ctrl**+**Alt**+**T** shortcut.
    
2.  Install **ethtool**:  
    
    ```
    sudo apt-get install ethtool
    ```
    
3.  See if your computer supports Wake-on-LAN:  
    
    ```
    sudo ethtool eth0
    ```
    
    Look for the **Supports Wake on** value. If there's a **g** there, then Wake-on-LAN can be enabled.
    
    If **eth0** isn't your default network interface, modify the command to reflect that. The **ifconfig -a** command lists the available interfaces. Look for the ones with a valid **inet addr** (IP address).
    
4.  Set up Wake-on-LAN in Ubuntu:  
    
    ```
    sudo ethtool -s eth0 wol g
    ```
    
    If you get a message about the operation not being supported, then you most likely saw a **d** during the last step, which means you can't enable Wake-on-LAN on Ubuntu.
    
5.  After the command runs, rerun the one from Step 3 to make sure that the **Wake-on** value is **g** instead of **d**.
    

See [this Synology Router Manager help article](https://kb.synology.com/en-global/SRM/help/SRM/MainMenu/get_started?version=1_2) if you need additional help setting up a Synology router with Wake-on-LAN.

Now that the computer is set up to use Wake-on-LAN, you need a program that can send the magic packet required to instigate the startup. [TeamViewer](https://www.teamviewer.com/en-us/download) is one example of a [free remote access tool](https://www.lifewire.com/free-remote-access-software-tools-2625161) that supports Wake-on-LAN. Since TeamViewer is made specifically for remote access, its WoL function is handy when you need into your computer while away but forgot to turn it on before you left.

TeamViewer can use Wake-on-LAN in two ways. One is through the network's [public IP address](https://www.lifewire.com/what-is-a-public-ip-address-2625974), and the other is through another TeamViewer account on the same network (assuming the other computer is on). This lets you wake the computer without configuring router ports since the other local computer that has TeamViewer installed can relay the WoL request internally.

Another great Wake-on-LAN tool is [Depicus](https://www.depicus.com/wake-on-lan/welcome), and it works from a variety of places. You can use their WoL feature through their website without downloading anything, but they also have a GUI and command-line tool available for Windows (for free) and macOS, plus Wake-on-LAN mobile apps for Android and iOS.

Other free Wake-on-LAN apps include [Wake On LAN for Android](https://play.google.com/store/apps/details?id=de.ralischer.wakeonlan) and [RemoteBoot WOL](https://apps.apple.com/us/app/remoteboot-wol/id310369182) for iOS. WakeOnLan is another free WoL tool for macOS, and Windows users can opt for [Wake On Lan Magic Packets](http://magicpacket.free.fr/) or [WakeMeOnLan](https://www.nirsoft.net/utils/wake_on_lan.html).

One Wake-on-LAN tool that runs on Ubuntu is called powerwake. Install it with the following command:  

```
sudo apt-get install powerwake
```

Once installed, enter **powerwake** followed by the IP address or [hostname](https://www.lifewire.com/what-is-a-hostname-2625906) that should be turned on, like this:  

```
powerwake 192.168.1.115
```

or:  

```
powerwake my-computer.local
```

## Wake-on-LAN Troubleshooting

If you followed the steps above, found that your hardware supports Wake-on-LAN without any issues, but it doesn't work when you try to turn on the computer, you might need to enable it through your router. To do this, [log into your router](https://www.lifewire.com/accessing-your-router-at-home-818205) to make some changes.

The magic packet that turns on the computer is normally sent as a [UDP](https://www.lifewire.com/list-of-tcp-ports-and-udp-ports-818133) datagram over port 7 or 9. If this is the case with the program you use to send the packet, and you're trying this from outside the network, open those [ports on the router and forward requests](https://www.lifewire.com/how-to-port-forward-4163829) to every IP address on the network.

Forwarding WoL magic packets to a specific client IP address would be pointless since the powered down computer doesn't have an active IP address. However, since a specific IP address is necessary when forwarding ports, make sure the ports are forwarded to the broadcast address so that it reaches every client computer. This address is in the format \*.\*.\*.255.

For example, if you [determine your router's IP address](https://www.lifewire.com/how-to-find-your-default-gateway-ip-address-2626072) to be 192.168.1.1, then use the 192.168.1.255 address as the forwarding port. If it's 192.168.2.1, use 192.168.2.255. The same is true for other addresses like 10.0.0.2, which would use the 10.0.0.255 IP address as the forwarding address.

You might also consider subscribing to a dynamic DNS (DDNS) service like [No-IP](https://www.noip.com/). That way, if the IP address tied to the WoL network changes, the DNS service updates to reflect that change and still lets you wake up the computer. The DDNS service is only helpful when turning your computer on from outside the network, like from your smartphone when you're not home.

## More Information on Wake-on-LAN

The standard magic packet used to wake a computer works below the Internet Protocol layer, so it's usually unnecessary to specify IP address or DNS information. A [MAC address](https://www.lifewire.com/introduction-to-mac-addresses-817937) is normally required, instead. However, this isn't always the case, and sometimes a [subnet mask](https://www.lifewire.com/internet-protocol-tutorial-subnets-818378) is needed.

The typical magic packet also does not return with a message indicating whether it successfully reached the client and turned on the computer. What normally happens is that you wait several minutes after the packet is sent, and then check whether the computer is on by doing whatever it is you wanted to do with the computer once it was powered on.

## Wake on Wireless LAN (WoWLAN)

Most laptops do not support Wake-on-LAN for Wi-Fi, officially called Wake on Wireless LAN, or WoWLAN. The ones that do need to have BIOS support for Wake-on-LAN and need to use Intel Centrino Process Technology or newer.

The reason most wireless network cards don't support WoL over Wi-Fi is that the magic packet is sent to the network card when it's in a low power state. A laptop (or wireless-only desktop) that isn't authenticated with the network and is shut down has no way to listen for the magic packet, and won't know if one is sent over the network.

For most computers, Wake-on-LAN works over Wi-Fi only if the wireless device is the one sending the WoL request. In other words, it works if the laptop, tablet, phone, or other device is waking up a computer, but not the other way around.

FAQ

-   How do I join a LAN world in Minecraft?
    
    To [join a LAN game of _Minecraft_](https://www.lifewire.com/how-to-play-minecraft-multiplayer-4582099#:~:text=How%20to%20Play%20Minecraft%20Multiplayer%20on%20a%20LAN), choose a host computer and start a Single Player game on it > create or join a world > press **Esc** > select **Open to LAN**. Set the game mode, then select **Start LAN World**. Players can then join via the **Multiplayer** option.
    
-   What's the difference between a LAN and WAN?
    
    A LAN connects multiple devices over relatively short physical distances, while a WAN ([Wide Area Network](https://www.lifewire.com/lans-wans-and-other-area-networks-817376#:~:text=Token%20Ring.-,WAN%3A%20Wide%20Area%20Network,-A%20WAN%20spans)) connects devices across a much larger area. The internet itself is a WAN, for example.
    
-   How do I transfer files from PC to PC with a LAN cable?
    
    To [transfer files between computers with a cable](https://www.lifewire.com/how-to-transfer-files-from-pc-to-pc-4770090), make sure both machines are turned on and running Windows, then connect the cable to one of the PCs. Wait for the PC to recognize the cable, then connect the other end of the cable to the other PC. Open **Windows Easy Transfer**, then follow the on-screen prompts to start transferring.
    

Thanks for letting us know!

Get the Latest Tech News Delivered Every Day

[Subscribe](https://www.lifewire.com/wake-on-lan-4149800#)


# Personal Exp

```bash
sudo ethtool -s enp3s0 wol g
```