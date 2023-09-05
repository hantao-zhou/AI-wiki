# Ref

---
created: 2023-09-05T13:17:31 (UTC +08:00)
tags: [路由器、纵笔浮生]
source: https://post.smzdm.com/p/a7ngxeel/
author: 纵笔浮生
---

# REF- 『软路由踩坑指南』 篇四：ESXi 8.0虚拟机安装openWrt 路由系统终极指南_路由器_什么值得买

> ## Excerpt
> 写在前面上面一篇写完了《ESXi 8.0 虚拟机安装 iKuai 主路由及保姆级配置》，感兴趣的朋友可以前去围观。今天我们开始进入OpenWrt旁路

---
2023-02-16 15:35:10 186点赞 917收藏 136评论

## 写在前面

上面一篇写完了[《ESXi 8.0 虚拟机安装 iKuai 主路由及保姆级配置》](https://post.smzdm.com/p/a5op28x7/)，感兴趣的朋友可以前去围观。

文章

![](https://qna.smzdm.com/202302/10/63e64cc040c022786.gif_a200.jpg)

ESXi 8.0虚拟机安装iKuai主路由及保姆级配置

今天我们开始进入OpenWrt旁路由的安装，作为折腾软路由的人来说，这个可以说是必装的了。今天我们一起来搞定旁路由的安装和设置。首先简单来说一下旁路由和[OpenWrt](https://openwrt.org/zh/start)。

### 1.主路由与旁路由

旁路由是一个接入主路由的设备，只是比较特殊，具备网关还有其他一些特定的功能。旁路由应该叫旁路网关更合适，主路由从设备上收到数据包，首先发送到OpenWrt旁路由进行处理，包括去广告、留学等等，处理好之后再发回主路由，转发到外网。同样主路由接受到外网的数据包，首先也会将数据发送到旁路由进行处理，然后将处理过的数据，再根据数据包的目的地址发送到设备。

### 数据走向：

> -   第1步：设备通过[网线](https://www.smzdm.com/fenlei/wangxian/)第一个接入的[路由器](https://www.smzdm.com/fenlei/luyouqi/)叫做主路由，主要实现拨号上网功能，ikuai就是主路由，设备的数据首先会来到ikuai主路由。
>     
> -   第2步：我们已经将ikuai网关指向了openwrt，ikuai会将数据传输到openwrt进行处理。
>     
> -   第3步：openwrt的网关指向了ikuai主路由，openwrt处理后的数据回再传回likuai主路由。
>     
> -   第4、5步：openwrt的网关指向了ikuai主路由，会再传回likuai主路由。收到openwrt处理后的数据后，ikuai会将数据通过光猫转换发送出去。
>     

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62aed35e5256.jpg_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_2/)

### 2.OpenWrt

[OpenWrt的官方介绍：](https://openwrt.org/zh/start)

OpenWrt 项目是一个针对嵌入式设备的 Linux 操作系统。OpenWrt 不是一个单一且不可更改的固件，而是提供了具有软件包管理功能的完全可写的文件系统。这使您可以从供应商提供的应用范围和配置中解脱出来，并且让您通过使用适配任何应用的软件包来定制设备。对于开发人员来说，OpenWrt 是一个无需围绕它构建完整固件就能开发应用程序的框架。OpenWRT 是一个高度模块化、高度自动化的嵌入式 Linux 系统，拥有强大的网络组件和扩展性，不同于其他许多用于路由器的发行版，它是一个从零开始编写的、功能齐全的、容易修改的路由器操作系统。还提供了 100 多个已编译好的软件，而且数量还在不断增加，OPKG 包含超过 3500 个软件，默认使用 LuCI 作为 web 交互界面。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62ae77b63729.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_3/)

对于普通用户来说，官网下载的镜像是个内核版本，几乎没有什么功能，后续需要自行安装插件，麻烦且容易出错，像OpenWrt主要使用的也就是去广告、签到、留学、加速、薅羊毛这些插件，所以参考一下大佬编译的多功能版本即可。喜欢精简的有精简版，喜欢全功能的有高大全版本。**像lean(大雕)、 eSir、sirpdboy、gxnas、bleach1991、等大佬编译的OpenWrt固件都是非常不错的，可以直接使用。**

**本次安装使用的是bleach1991大神的高大全版本。默认登录信息：**

> -   IP：192.168.1.1
>     
> -   用户：root
>     
> -   密码：password
>     

各版本之间切换，只要将OpenWrt的配置做好备份，安装完成后可以快速恢复设置。**安装之前首先附上一张目前的网络连接图**，按照这个用网线将设备连接好：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62aeb82d2802.jpg_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_4/)

## 一、创建OpenWrt虚拟机

### 1.选择创建类型

首先进入ESXi后台，新建虚拟机，点击创建新虚拟机：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62ae7d638761.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_5/)

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62aebf189795.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_6/)

### 2.选择名称和客户机操作系统

输入虚拟机名称，名称填写openwrt，客户操作系统选择Linux，openwrt系统也是基于 Linux 开发的。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c7dcb1bfa5641.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_7/)[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62ba1bbc6247.gif_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_8/)

客户机操作版本选择选择【其他5X Linux(64位)】、【其他Linux(64位)】版本也可以：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62ba96426403.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_9/)

### 3.选择存储

无需更改，点击下一步：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62bb4c2e9901.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_10/)

### 4.自定义设置：

#### ①虚拟硬件设置：

**【CPU设置】**4核，默认每个插槽一核，其他默认。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62bd331a4019.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_11/)

**【内存】**：内存分配2GB，1GB也够用。如果说内存足够的话，分配个4G、8G也是可以的，后面要折腾不少东西，可以多预留一些，这个不用纠结，后面可以根据内存的使用情况随时调整，在虚拟机关机的状态下，可以通过编辑更改内存大小。

内存一定勾选**【预留所有客户机内存(全部锁定)】**选项，如果刚开始设置没有看到【预留所有客户机内存(全部锁定)】的话，等下面都设置好了，再返回来检查一下，一定要保证选上，因为我们需要直通一个网卡作为openwrt的物理lan口，需要锁定内存。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62c0da4e2666.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_12/)

**【[硬盘](https://www.smzdm.com/fenlei/yingpan/)设置】**：将硬盘配置删掉即可，后面创建虚拟机时，系统会自动生成分区。剩下的像SCSI控制器、USB控制器、CD/DVD控制器不需要的删掉，保留一个SATA控制器。

**【网络适配器】**：这里着重说一下，如果我们添加了这个适配器，安装openwrt后，esxi会自动虚拟产生一个eth0虚拟网卡，作为默认lan口，桥接到esxi虚拟机。虚拟的网口是万兆网口，但是还是会一定程度上损失网速，所以我们这里不使用虚拟网口。而是直接直通一个物理网卡给openwrt作为lan口。我们前面已经用网线将整个lan口物理[交换机](https://www.smzdm.com/fenlei/jiaohuanji/)连接了，ikuai和物理交换机也连接了，所以ikuai主路由和openwrt也进行了物理连接，而不是采用虚拟网口连接。这样的好处就是，不使用ESXi的虚拟网口，虽然ESXi虚拟的网口是万兆的，但是虚拟网口在一定程度上还是会损失网速和占用CPU。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62c365d69212.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_13/)

### 5.添加直通网卡

选择添加其他设备——PCI设备：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62c42d754452.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_14/)

这里一定要将空闲的，没有直通给其他虚拟机的网卡，直通给openwrt。如果将已经直通给其他设备的网卡误直通给了openwrt，会造成openwrt无法开机。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62c4233b4511.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_15/)

### 为何要直通(Passthrough)网卡：

> -   VT-d、 DirectPath l/O，通过DirectPath /O，虚拟机可以使用I/0内存管理单元访问平台上的物理PCI功能，就是俗称的虚拟化直通，简单理解就是允许宿主机将某些硬件资源的管辖权直接移交给虚拟机，虚拟机会以直通独占的方式使用硬件，宿主机将不能再使用此硬件，利用效率几乎等同于将硬件插到了虚拟机的主板扩展槽里一样，最实用的目的是避免了虚拟化平台自身软件层转换带来的效能下降。
>     
> -   例如在[服务器](https://www.smzdm.com/fenlei/fuwuqi/)上将某个物理网卡直接划给某台虚拟机使用，以达到几乎和物理机搭配物理网卡类似的网络性能。更可观的场景是，将磁盘控制器直通给虚拟机独占使用，那么虚拟机往往最瓶颈的磁盘性能，将得到非常可观的提升。esxi 下面默认网卡是虚拟的，所以受限于驱动及性能的影响，导致很多时候速率达不到网卡原本的速率，但是通过直通后，网卡的性能就毫无保留的发挥出来了。
>     

### 6.虚拟机选项设置

选择EFI启动，记得一定要把下面的是否为此虚拟机启用UEFI安全引导的√去掉，否则会安装后无法启动，已踩过巨坑。也可以采用，引导方式选择BIOS，其他不用管。如果安装后有问题可以检查一下自己下载的镜像格式，或者两种引导方式来回替换看下。点下一页：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62c651df257.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_16/)

检查没问题后，点下一步：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62c984be8881.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_17/)

点击完成，返回到ESXI内即看到刚才创建的虚拟机，在电源关闭状态下。这时候不要开启电源，点编辑看下设置对不对。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62cbd5017707.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_18/)

## 二、StarWind V2V Converter写入镜像

下面安装[StarWind V2V Converter](https://www.starwindsoftware.com/starwind-v2v-converter)软件。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62cdfb352425.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_19/)

安装完成后打开StarWind V2V Converter，选第二项加载文件：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62ce041b5966.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_20/)

找到下载好的openwrt镜像，点下一步：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62ce73ed8273.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_21/)

选择第二项，远程加载：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62d068f5400.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_22/)

输入ESXI的ip地址和登录账号及密码，点下一步：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62d283aa1877.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_23/)

登录后，选择OpenWrt文件夹，这一步是确定OpenWrt的安装位置，点下一步：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62d54a492984.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_24/)

选择第一项，点下一步。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62d5cf353833.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_25/)

点【Convert】转换写入：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62d6b21c5875.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_26/)

等待转换完成：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62d6e4f45170.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_27/)

完成。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62d976da846.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_28/)

回到ESXI界面可以看到，已经安装完成，并且自动生成了硬盘。取消，退出：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62db1f349413.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_29/)

打开电源自动安装：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62dcd4bb112.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_30/)

开始跑码，等待跑码完成。有的版本的镜像隐藏了跑码过程。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62dd97885024.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_31/)

等看到这个见面就说明安装成功了，如果不出现这个页面，可以等看着跑码不动了，可以按回车看下：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62de18f75079.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_32/)

## 三、设置网卡

输入命令:vi etc/config/network。vi和etc之间有个空格：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62def6167697.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_33/)

回车，进入设置网卡界面：

切换光标至 option ipaddr ‘192.168.1.1。按i键，修改IP（自定），这里修改的是lan口的管理地址，也是openwrt的网关。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62e1ec433921.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_34/)

按Esc键，输入:wq 回车。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62e5434f1538.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_35/)

输入reboot，回车，重启

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62e726055258.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_36/)

这时候在ESXi网络拓扑下可以看到，OpenWrt并没有接入虚拟交换机，而是使用我们刚才直通的网卡。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62e93a145737.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_37/)

## 四、开启iKuai和Opnewrt的自动启动

点击ESXi的管理——自动启动，设置一个自动启动参数，然后把自动启动参数，配置给OpenWrt即可，设置之后每次重启两个软路由会自动重启。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62e93473147.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_38/)

## 五、部署OpenWrt管理后台

### 1.登入后台

默认账号root，密码：password，进入后修改密码。一些镜像是默认无密码的，在下载镜像的时候注意下。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62e9d5408228.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_39/)

登入后台后，点【系统】——【管理权】——【设置一个常用密码】

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62eaf1f81187.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_40/)

还是在【系统】——【管理权】，接着往下翻，开启下系统的SHH，便于远程访问。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62ecb4215668.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_41/)

### 2.lan口设置

找到【网络】——基本设置

IPV4地址：192.168.50.2。openwrt的网关和管理地址：

IPV4网关：输入ikuai的ip地址，192.168.50.1

### 3.国内主流DNS服务器：

DNS服务器：这里先暂时使用公共服务器。可以多填入几个：

> -   阿里公共DNS：223.5.5.5，223.6.6.6 类型选择：UDP
>     
> -   腾讯公共DNS：119.29.29.29 类型选择：UDP
>     
> -   百度公共DNS：180.76.76.76 类型选择：UDP
>     
> -   华为云公共DNS ：122.112.208.1，139.9.23.90 类型选择：UDP
>     
> -   114公共DNS：114.114.114.114，114.114.115.115 类型选择：UDP
>     
> -   OpenerDNS：42.120.21.30 类型选择：UDP
>     
> -   DNS派 电信 / 移动 / 铁通：101.226.4.6，218.30.118.6 类型选择：UDP
>     
> -   DNS派 联通：123.125.81.6，140.207.198.6 类型选择：UDP
>     

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62ef2afb2582.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_42/)

### 4.关闭旁路由DHCP服务

关闭旁路由DHCP服务，动态IP统一由iKuai主路由配置，点右下角保存应用生效。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62f475ca7324.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_43/)

### 5.高级设置

高级设置里，勾选开机自动运行、强制链路。保存应用

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62f437515211.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_44/)

**物理设置：**取消桥接接口，这里我们使用的是直通物理网卡，可以取消桥接，这样ikuai、交换机、openwrt旁路由完全通过物理线路连接，减轻CPU压力的同时也能保证网络不损失。

如果没有直通网卡给openwrt，采用的是Esxi的虚拟网口，这个桥接需要勾选上。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62f60bf73608.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_45/)

## 六、ikuai配置

打开ikuai管理页面，修改DHCP服务器。在修改之前，先将ikuai配置进行备份，可以通过编辑对备份名称进行修改便于区分。出问题时，想要快速恢复当前设置，只要点恢复即可。一定要养成折腾之前，先备份的好习惯，原因你懂的。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62f707c27762.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_46/)

### 1.修改ikuai DHCP服务器

将网关、首选DNS、备选DNS都改为192.168.50.2（openwrt的网关）。接入ikuai主路由的设备的DNS由openwrt代理。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62f97cf35166.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_47/)

### 2.修改DNS

点开【网络设置】——【DNS设置】，将DNS改为192.168.50.2，由openwrt代理，点击保存生效。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62f9b0199840.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_48/)

## 七、开启Turbo ACC 网络加速设置

开启【Turbo ACC 加速】，只开启前三个即可。DNS缓存后面由SmartDNS来管理，配合去广告来使用。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c62fdfac92001.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_49/)

## 八、防火墙设置

防火墙对照设置一下，一定要将下面其他接口的转发删掉，尤其是WAN口的，只保存一个lan口即可：

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/13/63ea4a5db1f886141.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_50/)

## 九、网络诊断

打开【网络】——【诊断】，ping一下，返回结果，旁路由连接成功。

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://am.zdmimg.com/202302/12/63e8c62fe21836824.png_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_51/)

## 总结

**好了本期就到这里吧，啰嗦啰嗦写了这么多，有错误的地方希望多包涵。**

到这里EXSI8.0+ikuai主路由+openwrt旁路由的基础搭建就算万成了。后面就开始各种功能的折腾了。后面会继续折腾《个人域名、DDNS动态解析、公网IP：通过ikuai软路由端口映射高速访问内部网络》、《OpenWrt 旁路由模式下的SmartDNS+AdGuardHome设置分流与去广告》。

___

**★ 以上就是本期的全部内容了，有疑问或补充~欢迎评论区留言~~感兴趣的朋友，关注一下不迷路**

[![ESXi 8.0虚拟机安装openWrt 路由系统终极指南](https://qnam.smzdm.com/202302/12/63e8c630124c32814.gif_e1080.jpg)](https://post.smzdm.com/p/a7ngxeel/pic_52/)

## 往期相关文章

文章

![](https://qna.smzdm.com/202302/10/63e64cc040c022786.gif_a200.jpg)

ESXi 8.0虚拟机安装iKuai主路由及保姆级配置

文章

![](https://qna.smzdm.com/202301/31/63d7ecd87ccc45898.gif_a200.jpg)

文章

![](https://qna.smzdm.com/202301/30/63d6bbb50aa629928.gif_a200.jpg)

作者声明本文无利益相关，欢迎值友理性交流，和谐讨论～

![](https://res.smzdm.com/pc/pc_shequ/dist/img/the-end.png)


# 

# Summary

1. Get an esxi installer ISO, etch on the USB device
2. Install esxi, connect to the same network of your own computer
3. get x86-64 version of openwrt [Index of /releases/22.03.5/targets/x86/64/ (openwrt.org)](https://downloads.openwrt.org/releases/22.03.5/targets/x86/64/)
4. translate the img into vsmk, notice the output methods should be using the online output method [V2V Converter / P2V Converter - Converting VM Formats (starwindsoftware.com)](https://www.starwindsoftware.com/starwind-v2v-converter#download)