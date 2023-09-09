---
created: 2023-09-08T21:36:20 (UTC +08:00)
tags: [nuc,troubleshooting,usbnic]
source: https://www.virten.net/2020/07/solution-esxi-installation-with-usb-nic-only-fails-at-81/
author: 
---

# Solution: ESXi Installation with USB NIC only fails at 81% | virten.net

> ## Excerpt
> When you try to install ESXi 7.0 with a USB NIC only, the installation fails at 81% with the following error message:

---
When you try to install ESXi 7.0 with a USB NIC only, the installation fails at 81% with the following error message:

> **Exception: No vmknic tagged for management was found.**

![](https://www.virten.net/wp-content/uploads/2020/07/esxi-installation-fails-at-81percent-usb-nic.png)  
Some homelab systems like the [Intel 10th Gen NUC](https://www.virten.net/2020/03/esxi-on-10th-gen-intel-nuc-comet-lake-frost-canyon/) are not equipped with a compatible network adapter. As a workaround, you can use a USB NIC and create a [customized image](https://www.virten.net/2020/04/how-to-add-the-usb-nic-fling-to-esxi-7-0-base-image/) to install ESXi. The installation fails as the ESXi installer can't assign the USB NIC as a management adapter because it specifically searches for a "vmnic#", not "vusb#" adapter.

This article explains how to proceed with the 81% installation error and get the system to work.

1.  If not already, create a Customized Image as explained [here](https://www.virten.net/2020/04/how-to-add-the-usb-nic-fling-to-esxi-7-0-base-image/).
2.  Start the installation and wait until it fails at 81%  
    ![](https://www.virten.net/wp-content/uploads/2020/07/esxi-installation-fails-at-81percent-usb-nic.png)
3.  At this point, ESXi is already **installed**, but not **configured**.
4.  Remove the installation media and reboot the system
5.  When ESXi is loaded, press **F2** and login as "**root"** **without password**. (The password entered during the installation has not been saved because the configuration failed)
6.  You should notice that all Network Options are greyed out. Select **Network Restore Options**.  
    ![](https://www.virten.net/wp-content/uploads/2020/07/esxi-dcui-network-restore.png)
7.  Select **Restore Network Settings**  
    ![](https://www.virten.net/wp-content/uploads/2020/07/esxi-dcui-restore-network-settings.png)
8.  Log out
9.  Log back in
10.  Network options are no longer greyed out and the vusb0 adapter has been detected  
    ![](https://www.virten.net/wp-content/uploads/2020/07/esxi-usbnic-problem-fixed.png)

This website uses cookies to give you the best online experience. By using our website you agree to our use of cookies. Accept
