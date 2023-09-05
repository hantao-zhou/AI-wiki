---
created: 2023-09-05T20:41:23 (UTC +08:00)
tags: [ESXi,OpenWrt]
source: https://wi1dcard.dev/posts/convert-openwrt-image-to-esxi-vmdk/
author: Wi1dcard
---

# Convert OpenWrt Image to ESXi VMDK | Wi1dcard

> ## Excerpt
> The official doc of OpenWrt on VMware HowTo seems already outdated, and there&rsquo;s no explaination of how to fix Unsupported or invalid disk type 2 for 'scsi0:0'. Ensure that the disk has been imported. on ESXi 6.7. Here after looked into some clues on Chinese router forums, I found an usable method to convert the image into ESXi VMDK format on macOS.

---
The official doc of [OpenWrt on VMware HowTo](https://openwrt.org/docs/guide-user/virtualization/vmware) seems already outdated, and there’s no explaination of how to fix `Unsupported or invalid disk type 2 for 'scsi0:0'. Ensure that the disk has been imported.` on ESXi 6.7. Here after looked into some clues on Chinese router forums, I found an usable method to convert the image into ESXi VMDK format on macOS.

## Download the Image

You can find the `.img.gz` files on [https://downloads.openwrt.org/](https://downloads.openwrt.org/), for example:

[https://downloads.openwrt.org/releases/19.07.4/targets/x86/64/openwrt-19.07.4-x86-64-combined-ext4.img.gz](https://downloads.openwrt.org/releases/19.07.4/targets/x86/64/openwrt-19.07.4-x86-64-combined-ext4.img.gz)

## Install Dependencies

```
brew install gzip # To un-gzip .gz files
brew install qemu # To convert images
```

```
gunzip openwrt-19.07.4-x86-64-combined-ext4.img.gz
qemu-img convert -f raw -O vmdk openwrt-19.07.4-x86-64-combined-ext4.img openwrt-19.07.4-x86-64-combined-ext4.vmdk
```

## Upload the VMDK to ESXi

You can either upload the image using `scp` command or via web UI. However, I would suggest enable SSH on your ESXi host and use `scp`, as the next step requires shell prompt on the host.

```
scp openwrt-19.07.4-x86-64-combined-ext4.vmdk root@esxi:/vmfs/volumes/datastore1/
```

## Fix `Unsupported or invalid disk type 2 for 'scsi0:0'`

Before using the `.vmdk` file as an “existing hard disk” on ESXi, there’s one more step to convert it into supported disk type.

```
ssh root@esxi
cd /vmfs/volumes/datastore1/
vmkfstools -i 'openwrt-19.07.4-x86-64-combined-ext4.vmdk' openwrt-converted.vmdk -d thin
```

Done! Now we can create and boot a VM with adding `openwrt-converted.vmdk` as the primary disk. Enjoy it!






---
created: 2023-09-05T22:42:25 (UTC +08:00)
tags: [docs,guide-user,virtualization,vmware]
source: https://openwrt.org/docs/guide-user/virtualization/vmware
author: fuxifelix
---

# [OpenWrt Wiki] OpenWrt on VMware HowTo

> ## Excerpt
> OpenWrt on VMware HowTo  This article describes how to use OpenWrt as a virtual machine with VMware virtualization.  Tested with  *  Barrier Breaker 14.07 in combination with VMware ESXi 5.5 Update 2 Build 2068190 *  Chaos Calmer 15.05.1 with VMware Fusion and vSphere ESXi 6.0

---
This article describes how to use OpenWrt as a virtual machine with VMware virtualization.

First of all, you need to download the image from list above on your machine. After that you extract & convert it to a vmdk image:

```
gunzip openwrt-x86-generic-combined-ext4.img.gz
qemu-img convert -f raw -O vmdk openwrt-x86-generic-combined-ext4.img openwrt-x86-generic-combined-ext4.vmdk
```

or

```
yum -y install qemu-img
wget https://downloads.openwrt.org/chaos_calmer/15.05/x86/64/openwrt-15.05-x86-64-combined-ext4.img.gz
gunzip openwrt-15.05-x86-64-combined-ext4.img.gz
qemu-img convert -f raw -O vmdk openwrt-15.05-x86-64-combined-ext4.img openwrt-15.05-x86-64-combined-ext4.vmdk
```

or on a Mac

```
brew install qemu
qemu-img convert -f raw -O vmdk ~/Downloads/openwrt-15.05-x86-64-combined-ext4.img openwrt-15.05-x86-64-combined-ext4.vmdk
```

after that, just create a new VM in Fusion, Workstation, or ESXi with “Linux\\Other Linux 32-bit” with LSI BUS Logic & add the vmdk there. Use Intel PRO/1000 Network adapters. This may require editing the .vmx file to include following definition: _(On Workstation 10, the e1000 gave a corrupted vmx file. Using V6 machine type did work. So it seems somewhere between V6.5 and V10 VMware dropped support for the e1000 driver and/or the virtualDev keyword.)_

```
ethernet0.virtualDev = "e1000"
```

On Fusion I had to use the IDE drive controller type.

Follow these steps to get an Up to Date VM with the latest code running on ESX in 15 minutes:

2.  Import the OVA to VMware ESXi (tested with latest version 6 in July 2016)  
    The base image only has 1 virtual NIC setup with DHCP
    
3.  Power on the VM - observe the MAC Address - find that on you DHCP server
    
4.  Confirm the OpenWrt VM's IP address by opening the console
    
5.  Press enter to get a prompt
    
6.  Type `ifconfig | more` to see the DHCP assigned IP address for the Bridge assigned to the NIC
    
7.  If you don't have a DHCP server on your network you can set the IP Address manually: `vi /etc/config/network`  
    The whole goal here is to get the OpenWrt VM on the network so you can hit the LuCI Web User Interface with a web browser. This way we can update the base image.
    
8.  Once you've logged in to the LuCI web interface set a root password so you can ssh in
    
9.  With the Web UI navigate to the System/Flash Operations page and find this text: _Flash new firmware image - Upload a sysupgrade-compatible image here to replace the running firmware_. Check “Keep settings” to retain the current configuration (requires an OpenWrt compatible firmware image).
    

11.  Then upload that to your running OpenWrt system and click “Flash Image...”
    
12.  Reboot and login again.
    
13.  Now you can add the second NIC to use the OpenWrt VM as a WAN router. I set mine up with both DHCP and Static IP addresses for the WAN - and the LAN interface was configured as a DHCP server.
    
14.  To prepare for testing: install iperf3 and nmap from the System/Software page of the Web UI.
    
15.  See the testing section below for details...
    
16.  That's pretty much it. I'm very happy with this new setup. I was also looking at M0n0wall (monowall), and pfsense to run as VMs but OpenWrt has a lot more going for it as far as an Open Source eco-system and developer/vendor support.
    

1.  Start the server on OpenWrt: `iperf3 -s`
    

3.  Then install and run the client on other machines on your network.
    
4.  `iperf3 -c <ip-address-of-the-server>`
    

Here are some results from my system:

As you can see - the OpenWrt virtual machine running on VMware ESX is very capable of keeping up with your home internet router needs! And this is with only 1 virtual CPU and no tuning at all.

Here's a wish list of things we would like to accomplish with OpenWrt - consider this technical debt.

(Is there a better place to make these requests?)

1.  install open-vm-tools to enhance support on VMware hypervisors (possible via packages sources and LuCI or opkg)
    
2.  use vmxnet3 paravirtualized network interface
    
3.  learn how to create fresh builds from scratch
    
4.  install cloud-init capabilities to allow auto-configuration on OpenStack based clouds like OPNFV
    
5.  create jenkins job as part of CI to download and convert the raw image to vmdk with each build
    
6.  create jenkins job as part of CI to download and convert the raw image to qcow2 with each build
    
7.  do these conversions for both stable and trunk
    
8.  integrate OpenWrt into the CI Pipeline for other network testing projects like OPNFV
    

Disk size and problems with veeam backup and enlarging the disk Veeam backup and VMware will complain about the size of the virtual disk provided by the OpenWrt download because the disk is not multiple of 1KB. (this means: no backups available, and could be crucial in production environments)

VMware won't let you enlarge the disk in the normal way, so one simple way is:

1.  make a snapshot of the vm, for possible rollback
    
2.  move the original disk (from OpenWrt downloads) on ide 0:1
    
3.  add a new disk, with a whole size, like 128 MB , on ide 0:0
    
4.  use `sysrescuecdiso`
    
5.  start the vm with the iso
    
6.  with dd copy the disc on ide 0:1 to ide 0:0 like `dd if=/dev/sdb of=/dev/sda`
    
7.  enter `fdisk /dev/sda` and write the partition table (without making changes, this helps sysrescuecd to see the partitions properly)
    
8.  do `fsck -f` on the sda2 partition
    
9.  with `fdisk` resize the sda2 partition to occupy all the space available (but still starting with the same sector of before, normally 9135)
    
10.  use `resize2fs /dev/sda2`
    
11.  do `fsck -f /dev/sda2`
    
12.  restart the machine and boot with OpenWrt check that the system uses the new partition
    
13.  stop the machine, delete the previous hd (with less than 128MB)
    
14.  restart the machine and verify that everything is ok.
    

Please use these images in your home and work labs and provide any feedback you might have.

Feel free to update this wiki page with your results.

There is some feedback that the newer images are not booting properly. Has anyone else run into this issue?

`<[blockquote](http://december.com/html/4/element/blockquote.html) class="twitter-tweet" data-lang="en"><[p](http://december.com/html/4/element/p.html) lang="en" dir="ltr"><[a](http://december.com/html/4/element/a.html) href="https://twitter.com/iben">@iben</[a](http://december.com/html/4/element/a.html)> learn , well, your quickstart ova works great. Following the instructions in the paragraph above it by the letter doesn&#39;t. /shrug .</[p](http://december.com/html/4/element/p.html)>&mdash; Phoenixxl (@Phoenixxl) <[a](http://december.com/html/4/element/a.html) href="https://twitter.com/Phoenixxl/status/775043516070260740">September 11, 2016</[a](http://december.com/html/4/element/a.html)></[blockquote](http://december.com/html/4/element/blockquote.html)> <[script](http://december.com/html/4/element/script.html) async src="//platform.twitter.com/widgets.js" charset="utf-8"></[script](http://december.com/html/4/element/script.html)>`

1.  Create a snapshot from ESXI UI to allow easy rollback in case of issues
    

3.  You should be able to access console from ESXI, but no IPv4 network will be available
    
4.  Beware of keyboard layout of the console which is qwerty, type ifconfig and find IPv6 address
    
5.  From LuCi, go to Network/Interface and click edit on br-lan without doing any change, and save. The configuration will be automatically fixed.
    
6.  Reboot your OpenWRT VM, you should then get the IPv4 address back.
    

Here is an upgraded OVA VM export with version 19.07.5, using ext4 instead of squashfs and an extended /overlay filesystem, with DHCP enabled instead of a static IP for br-lan interface: [https://www.dropbox.com/s/4b0dy8d8iqf8a91/OpenWRT\_x86\_64\_19.07.05.ova?dl=0](https://www.dropbox.com/s/4b0dy8d8iqf8a91/OpenWRT_x86_64_19.07.05.ova?dl=0 "https://www.dropbox.com/s/4b0dy8d8iqf8a91/OpenWRT_x86_64_19.07.05.ova?dl=0")

___

After import of the previous OVA-file to VMware Sphere, I was able to upgrade to the latest OpenWrt version (21-00-RC3).

This machine, _OpenWRT-21_ has

VMDK (1st method): e1000 interface is found/loads intermittently.

Corresponds to Seg Fault errors in **kmodloader** when loading **libuclibc**.

#### Build Summary[](https://openwrt.org/docs/guide-user/virtualization/vmware#build_summary)
