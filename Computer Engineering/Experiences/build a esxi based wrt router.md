# Ref

---
created: 2023-09-05T14:25:37 (UTC +08:00)
tags: [路由器、纵笔浮生]
source: https://post.smzdm.com/p/a5op28x7/
author: 纵笔浮生
---

# REF- 『软路由踩坑指南』 篇三：ESXi 8.0虚拟机安装iKuai主路由及保姆级配置_路由器_什么值得买

> ## Excerpt
> 『软路由踩坑指南』ESXi 8.0虚拟机安装iKuai主路由及保姆级配置写在前面上面一篇写完了《ESXi 8.0虚拟机必备知识与保姆级安装过程》，感

---
2023-02-11 15:02:11 95点赞 572收藏 72评论

## 『软路由踩坑指南』ESXi 8.0虚拟机安装iKuai主路由及保姆级配置

## 写在前面

上面一篇写完了[《ESXi 8.0虚拟机必备知识与保姆级安装过程》](https://post.smzdm.com/p/a8x6o5on/)，感兴趣的朋友可以前去围观。

文章

![](https://qna.smzdm.com/202301/31/63d7ecd87ccc45898.gif_a200.jpg)

**今天我们开始进入ikuai主路由的安装，为何选择ikuai作为主路由，有下面两点原因：**  

首先就是设置比较简单，页面一目了然。iKuai 是国人开发的商业化路由系统，有专门的团队维护，成熟可靠，免费且安装简单。可以在线备份随时恢复，而且通过ikuai 云网页端和APP很简单的就可以实现远程管理。

其次楼主没有多拨的需求、也没有流控需求、也没有多账号计费管理的需求，已经试过，浦东的电信不支持多拨上网，最主要的原因就是和后面的openwrt旁路由进行隔离，ikuai只是负责PPOE拨号、DHCP、端口映射三个功能，主路由这些配置好之后，基本上就不会再变了，通过ikuai的在线备份可以一键恢复上网、一键开启旁路由模式，后面折腾旁路由的时候不要老是频繁断网，造成家里领导的极度不满。

## 一、ikuai镜像下载

ikuai镜像直接去[官网下载](https://www.ikuai8.com/component/download)最新版本即可，至于是选择64位还是32位的系统要看自己主机内存和硬盘的情况。比如你一共只有8G内存，ESXi占用1-2G内存，ikuai 64位再占用4G，那么openwr再选择1-2G内存就不太够用了，况且后面还想着折腾一下其他虚拟机，这时候就需要安装32位版本，一般2G内存1G硬盘就够用了。如果内存足够用16G以上就可以随意安装了。

楼主这次工程机16G内存，直接选择安装64位系统，选择64位ISO镜像下载，下载完成后放在电脑桌面上待用即可：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64ccf3882a1547.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_2/)

### 32 位和 64 位的区别

| 规格 | 32 位系统 | 64 位系统 |
| --- | --- | --- |
| 内存 | 最低要求 1G，4G 以下内存 | 4G 以上内存 |
| 硬盘 | 1G 以上 | 1G 以上 |

**系统差异：**内存寻址不一样，32 位系统的处理器最大支持不到 4G 内存，而 64 位系统最大支持的内存高达亿位数。爱快带机量主要靠 CPU 性能决定（CPU 性能越好，带机数量越多，和内存大小没有直接关系。

| CPU线程 | 代表型号 | 可带机数量 |
| --- | --- | --- |
| 单线程 CPU | P4 | 50-150 台左右 |
| 双线程 CPU | E6500 | 100-250 台左右 |
| 4 线程 CPU | intel i3 530 | 300-600 |
| 8 线程 CPU | 志强 E3-1230 和 intel I7 | 700-1500 |

## 二、创建iKuai虚拟机

### 1.选择创建类型

进入ESXi后台，新建虚拟机，点击创建新虚拟机：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64ccf39001572.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_3/)

### 2.选择名称和客户机操作系统

输入虚拟机名称，名称填写 iKuai，客户操作系统选择Linux，爱快系统是基于 Linux 开发的。

客户机操作版本选择【其他6X或更高的Linux(64位)】版本，选择【其他5X Linux(64位)】版本也可以，一定要注意，安装32系统这里就选择32位，和下载的镜像版本一定要对好。点击下一步：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64ccf39f842817.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_4/)

### 3.选择存储

无需更改，点击下一步：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64ccf3a8dc1159.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_5/)

### 4.自定义设置：

#### ①虚拟硬件设置：

**【CPU设置】：**4核，默认每个插槽一核。

**【内存】：**4GB，内存设置一定要勾选**【预留所有客户机内存(全部锁定)】**选项，下面要直通网卡，需要锁定内存，如果刚开始设置没有看到**【预留所有客户机内存(全部锁定)】**的话，等下面都设置好了，再返回来检查一下，有没有选项，一定要保证选上。

**【硬盘设置】：**一般设置2G就够用了了，后面如果折腾DOCKER或者在ikuai内套娃安装虚拟机可以大一点，楼主的硬盘比较大，设置个8GB。如果32位的系统一般设置内存2G，硬盘2G即可够用。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64ccf3d75d9977.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_6/)

硬盘置备选择：厚置备，置零。

其他参数对照设置就行了。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64ccfc19964178.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_7/)

### 5.添加直通网卡

选择添加其他设备——PCI设备：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64ccfdd2978206.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_8/)

将前面直通的网卡按照顺序插入：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64ccfde30e6375.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_9/)

> ### 为何要直通(Passthrough)网卡：
> 
> -   VT-d、 DirectPath l/O，通过DirectPath /O，虚拟机可以使用I/0内存管理单元访问平台上的物理PCI功能，就是俗称的虚拟化直通，简单理解就是允许宿主机将某些硬件资源的管辖权直接移交给虚拟机，虚拟机会以直通独占的方式使用硬件，宿主机将不能再使用此硬件，利用效率几乎等同于将硬件插到了虚拟机的主板扩展槽里一样，最实用的目的是避免了虚拟化平台自身软件层转换带来的效能下降。
>     
> -   例如在[服务器](https://www.smzdm.com/fenlei/fuwuqi/)上将某个物理网卡直接划给某台虚拟机使用，以达到几乎和物理机搭配物理网卡类似的网络性能。更可观的场景是，将磁盘控制器直通给虚拟机独占使用，那么虚拟机往往最瓶颈的磁盘性能，将得到非常可观的提升。esxi 下面默认网卡是虚拟的，所以受限于驱动及性能的影响，导致很多时候速率达不到网卡原本的速率，但是通过直通后，网卡的性能就毫无保留的发挥出来了。
>     

### 6.虚拟机选项设置

选择EFI启动，记得一定要把下面的是否为此虚拟机启用UEFI安全引导的√去掉，否则会安装后无法启动，已踩过巨坑。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd0037f1781.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_10/)

点击完成，返回到ESXI内即看到刚才创建的虚拟机，在电源关闭状态下。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd05131c6859.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_11/)

点编辑再检查一下刚才的设置。再翻上去看下，内存独占是否设置成功：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd0545d66282.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_12/)

### 7.加载ISO镜像

点击CD/DVD驱动器，选择数据存储ISO文件，并勾选连接、打开电源时连接。点击浏览加载上一步我们下载好的ikuai ISO镜像文件。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd0667614763.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_13/)

弹出的对话框，点击【上载】，找到ISO文件，双击确定，打开：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd081d303061.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_14/)

选择刚刚上载的ISO镜像，点击右下角选择，保存生效：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd08c47e4170.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_15/)

回到ESXI打开电源，即可启动ikuai安装：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd0cc48931.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_16/)

开始跑码：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd1088406387.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_17/)

点击虚拟机的窗口放大，会看到提示是否安装UEFI引导模式，输入y，然后回车。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd10bdbe9974.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_18/)

选择安装系统的硬盘，输入1，然后回车。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd1123671427.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_19/)

输入y，然后回车

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd14009e1404.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_20/)

虚拟机会自动开始安装，安装成功会自动重启：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd148e457833.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_21/)

等待跑码：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd17d4e83911.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_22/)

出现这个页面就是完成了，这里可以看到ikuai的中文控制台，右边是web管理地址和当前已经连接的网口，这里要开始规划我们工控机上4个网络接口了。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd18d5f99689.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_23/)

### 8.设置网卡绑定

输入1回车：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd1b03b4326.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_24/)

进入网卡绑定界面，wan 口就是用来接入外部网络，比如光猫，lan 口就是接内部设备的，比如自己的电脑。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd1ae2bd1455.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_25/)

这里已经给我们展示了设置命令通过下面两个命令进行设置和解绑网卡：

> -   set lan1 eth0
>     
> -   del lan1
>     

输入set wan1 eth1，回车，意思是将eth1口设置为wan口，这个口用来接外部网络，比如光猫，或者上级[路由器](https://www.smzdm.com/fenlei/luyouqi/)。关于wan口看个人习惯了，可以将工程机最边上的一个口分配给wan，好区分，因为ESXI默认是第一个网口etho作为管理口，这个口我们不能直通，所以也不能将它设置为wan口，因为没有直通，网络传输性能会有一定程度损失，只能留着不用或者桥接成lan口，给其他设备使用。楼主习惯将第一个设置为管理口，第二个口设置为wan口，大家可以根据自己的习惯进行调整，无所谓的，这个不用纠结太多。后面也可以在ikuai的web端进行修改也是很方便的。

输入set lan1 eth2，回车。意思是将eth2口设置为lan口，这个口就是用来接本地设备的口，用来接[交换机](https://www.smzdm.com/fenlei/jiaohuanji/)或者电脑。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd1d22f1552.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_26/)

可以看到eth2被设置成了lan1口。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd1e82ff5686.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_27/)

设置完成后，输入q，回车返回控制台：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd219df14610.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_28/)

### 9.设置lan/wan地址

输入2，回车，设置LAN/WAN地址，设置网关

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd22fdbf6274.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_29/)

输入0，设置lan1地址

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd2458655247.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_30/)

输入前面我们设置过的192.168.50.1，回车保存

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd2503928897.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_31/)

设置已成功，输入q，回车退出。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd268c059449.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_32/)

在首页可以看到设置已生效，输入8，回车，选择重启ikuai：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd281dcf9525.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_33/)

弹出界面输入，0，回车等待重启，等待重启过程中，我们去ESXI后台设置下ikuai的自动启动：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd2c3eb44433.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_34/)

### 10.开启iKuai的自动启动

点击ESXi的管理——自动启动，设置一个自动启动参数，然后把自动启动参数，配置给ikuai即可，设置之后每次重启两个软路由会自动重启。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd2cc8d85208.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_35/)

## 三、iKuai web端设置

iKuai设置完成，将设置好的eth2接口插到电脑上，ehh1接口连接到光猫lan口，在浏览器输入192.168.50.1（ iKuai网关地址），打开地址登录，默认账号密码admin。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd2cb65e910.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_36/)

这个网址前面我们设置esxi的时候已经将电脑设置为192.168.50.XX的相同IP段，如果管理页面还是打不开，就再检查一下电脑的IP地址，目前ikuai主路由还没有开启DHCP(Dynamic Host Configuration Protocol, 动态主机配置协议) 功能，没办法给电脑自动分配IP地址。

打开控制面板—网络和internet——更改适配器选项或者在Windows任务栏中选择网络 - 右键 - 打开 “网络和 Internet” 设置

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd2d971b5847.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_37/)

这时候电脑显示未识别的网络：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd2dce707936.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_38/)

右击网络-【属性】：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd32d6cc2827.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_39/)

双击IPV4协议，在弹出的属性内，填入相同的IP段：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd353bfe4650.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_40/)

第一次登录提示输入新密码，改一个自己常用的新密码即可。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd3629432972.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_41/)

进入后提示绑定e云app，这里可以绑定也可以后面再绑定：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/11/63e73d4163a536339.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_42/)

成功进入iKuai页面

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd38949b2885.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_43/)

## 四、设置PPPOE拨号

点击wan1，进入wan口设置：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd3968b15600.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_44/)

网卡，这里可以选择或者更改网卡，接入方式选择PPPOE拨号，账号和密码输入电信的拨号账号和密码，看到状态已连接，下面出现联通分配的I地址子网掩码、网关、DNS这些就说明已经拨号成功了，外网状态显示已连接了。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd3ad6a84167.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_45/)

关于账号密码可以直接给电信打电话，转人工查询，也可以注微信公众号“[中国电信上海客服](https://go.smzdm.com/d65e18787f61d68a/ca_aa_yc_163_a5op28x7_14197_0_185_0)” ? 查询宽带账号/初始密码及重置宽带密码。为了您的网络使用安全，请务必及时登录[电信官网](https://post.smzdm.com/edit/www.189.cn)修改密码。关于改桥接和获取公网IP放到下一期端口映射、DDNS、自定义域名访问再说。如果是光猫拨号，这里选择动态获取即可，由光猫分配。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd3dabba5848.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_46/)

## 五、内网设置DHCP及DNS

### 1.内网设置DHCP

为 iKuai 新增一个 DHCP 服务器，给接入ikuai软路由的设备，自动分配IP。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd4142388393.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_47/)

按照自己设定的网关进行填写：

客户端地址(DHCP 地址池)为 192.168.50.10-192.168.50.254。

_作用是以后有新设备连接到 iKuai 后，会自动分配从10到254之间的IP地址。局域网内的设备就可以通过自动获取 IP 地址上网了。设置好之后重启 DHCP 服务。之所以是从10开始，是楼主预留了10个IP地址用来自定义使用。_

**子网掩码：**255.255.225.0

**网关：**192.168.0.1。这里我们暂时先设置为ikuai的网关，先保证能够上网，这里上网是数据是不经过openwrt，将来openwt旁路由安装设置好之后再将网关设置为192.168.50.2。

**首选DNS：**233.5.5.5

**备用DNS：**119.29.29.29

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd42d64879.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_48/)

关于DNS服务器，大家可以添加一些国内常用的，可以去[LibreSpeed](https://www.librespeed.cn/)进行DNS查询，这里先添加两个常用的，像阿里、腾讯、114的都可以。

### 2.国内主流DNS服务器：

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

新建 DHCP 服务器完成后，系统会自动启动这个服务，连接到ikuai的下级设备都会自动分配一个IP地址和DNS。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd435a238727.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_49/)

这个时候回到操作电脑的网络设置，右下角右击网络选择打开网络和internet设置，也可以从控制面板进入，依次选择以太网——更改适配器选项——右击属性——选择internet协议版本——双击打开，选择自动获取IP地址，等一会Ikuai软路由就会给电脑分配一个动态IP地址了。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd44c8fb3054.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_50/)

### 3.iKuai软路由DNS及DNS加速

ikuai下方就是DNS，设置，根据上面国内主流的DNS服务器，添加两个DNS，DNS加速服务暂时不开启。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd45169e9345.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_51/)

## 六、iKuai软路由lan口扩展网卡

LAN口扩展网卡，选择lan1——高级设置——勾选eth0，如果还有别网卡也一并点上，这样网口就都设置为ikuai的lan口了，点确定。这里连接的时候一定要注意，前面eth0网口是没有直通的，性能肯定不如eth2网口，连接设备或者交换机一定要用eth2口。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd45c1745267.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_52/)

## 七、上网模式及链路选择

选择【系统设置】-【基础设置】，更改上网模式和链路模式：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd49ae5e7184.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_53/)

### 1.上网模式

上网模式及链路模式具有多样性，上网模式支持 NAT4、NAT1、路由模式三种选项。

#### ①NAT4

对称 NAT（网络地址转换），NAT 类型中安全性最高的方式，也是设备默认上网模式。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd4bb5124172.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_54/)

#### ②NAT1：

完全锥形 NAT（网络地址转换），NAT 类型中安全性较低的方式，一般用于特殊需求场景，不建议开启。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd4bbd1b5902.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_55/)

#### ③路由模式：

所有数据不进行 NAT 转发，直接将内网 IP 不做伪装传送到外网，适用于内网 IP 都为公网地址时使用。路由模式下，路由器的所有行为都会以 lan 口的 IP 地址进行的。路由模式下无法使用端口映射功能。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd4eb0f32147.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_56/)

### 2.链路模式

可根据部署环境选择当前设备的部署模式。链路模式分为：主干模式、旁路模式和 SD-WAN 网桥三种：主干模式和旁路模式、SD-WAN模式。**这里ikuai作为主路由选择主干模式即可：**

> -   **主干模式：**主干模式在爱快路由器作为主网关出口时使用，默认不需要修改。
>     
> -   **旁路模式：**仅 X86 大路由支持旁路模式，在爱快作为旁路，不通过爱快上网但是需要爱快来管理 AP 以及设置钉钉认证、使用钉钉闪传、web 认证。
>     
> -   **SD-WAN 网桥：**透明网桥模式，在不改变现有网络结构下实现数据互访。
>     

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd500ccf7162.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_57/)

## 八、设置AC88U作为无线AP

有一些路由器（或者固件）支持AP模式，将 wifi 路由器当作一个 AP 使用，该模式将软路由接入 wifi 路由器的LAN口，然后就能直接使用 wifi 路由器的 wifi 功能连接到软路由了。

无线路由器上一般有 AP (接入点) 模式、Router (无线路由) 模式、Repeater (中继) 模式、Bridge (桥接) 模式、 Client (客户端) 模式；已经属于模式很全的路由了，下面看下几种模式的区别。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd50cfd18852.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_58/)

**①AP (接入点) 模式：**只需要把一根可以上网的网线插在路由器上，无需任何配置就可以通过有线和无线上网了；在此模式下，该设备相当于一台无线 HUB，可实现无线之间、无线到有线、无线到广域网络的访问。说到底就相当于一台拥有无线功能的交换机。需要注意的是，此时通过 LAN 口或者无线上网的用户设备获取的 IP 为上级路由分配的 IP 地址，所以无法管理本路由。适用场合：例如只是作为有线与无线接入点时，需要与上级路由下的设备互通时使用。

**② Router (无线路由) 模式下：**路由器就相当于一台普通的无线宽带路由器；平时我们使用的都是这种模式。需要连接 ADSL Modem (猫) 或者光猫等设备来进行配置。

**③Repeater (中继) 模式下：**由器会通过无线的方式与一台可以上网的无线路由器建立连接，用来放大可以上网的无线路由器上的无线信号。放大后无线信号的名称和原来无线路由器的无线信号名称一致。适用场合，有一台可以上网的无线路由器，但是该无线路由器的无线信号覆盖有限，希望无线信号可以覆盖更广泛的范围时使用。

**④Bridge (桥接) 模式：**路由器会通过无线的方式与一台可以上网的无线路由器建立连接，用来放大可以上网的无线路由器上的无线信号。适用场合：有一台可以上网的无线路由器，但是该无线路由器的无线信号覆盖有限，希望无线信号可以覆盖更广泛的范围时使用。

楼主这次升级之后，将AC88作为AP来用。打开AC88U管理后台，通过原地址为192.168.50.1，先将电脑连接AC88U路由器。通过网络设置向导可以快速设置：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd5389ca4924.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_59/)

选择AP模式【无线访问点】，点下一步配置一下wifi名称和密码即可：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd53f0725444.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_60/)

设置完成后，原来的192.168.50.1管理地址就会发生变化了，将AC88U接入交换机或者借到ikuai软路由的lan口，等待ikuai分配新的ip地址。

打开ikuai的监控终端，看下ikuai给分配的新的ip地址，我们可以看到中兴的路由器给的ip地址是192.168.50.11。通过这个 IP 地址就可以对 wifi 路由器进行管理了。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd53c9838033.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_61/)

192.168.50.11输入到浏览器打开设置后台，可以看到当前模式，AP模式：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd569f7e3899.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_62/)

## 九、开启UPnP

路由器的 UPNP是英语 Universal Plug and Play 的首字母缩写，一般翻译成通用即插即用。UPNP 是各种各样的[智能设备](https://www.smzdm.com/fenlei/chuandaishebei/)、无线设备和个人电脑等实现遍布全球的对等网络连接（P2P）的结构。UPNP 是一种分布式的。开放的网络架构，UPNP 是独立的媒介。在任何操作系统中，利用任何编程语言都可以使用 UPNP 设备。

路由器通用即插即用 UPnP 功能用于局域网络计算机和智能移动设备，流畅使用网络，加快 P2P 软件访问网络的速度，如观看在线视频和多点下载等方面的软件。

> -   开启后能方便智能监控设备直接透传到因特网，无需做烦琐的映射端口设置。
>     
> -   开启后能方便智能网络[存储设备](https://www.smzdm.com/fenlei/cunchushebei/)与因特网进行数据传输，节省手动设置时间。
>     
> -   开启后能方便在因特网使用 ERP、CRM、第三方远程桌面等软件。
>     
> -   开启后能提高穿透服务（如 nat123 全端口映射 P2P 穿透）的穿透成功率，节省服务器的带宽。
>     

**1.【排除端口】：**可以通过此处的端口设置可以排除掉外网中特殊应用的端口以及周知端口等。空着为不排除。填写时多个不连续的端口使用逗号隔开，连续端口可以使用 “—”。

**2.【允许内网 IP 映射】：**0.0.0.0-255.255.255.255 表示内网所有 IP 都可以映射。为空表示不映射任何内网 IP。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd599c455863.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_63/)

**3.【默认线路设置】：**此处设置可以指定 upnp 设备自动映射端口的线路。选择默认即可。

**4.【掉线检测】：**开启之后周期时间检测 upnp 客户端 2 分钟内是否有流量，如果没有流量，将会清理掉 upnp 状态中的映射规则。

**5.【定时重启】：**可设置周期性重启 upnp 服务

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd5c69bc7978.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_64/)

以上upnp这些功能可以根据需求设置：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd5dcedc9085.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_65/)

设置完成后可以在UPnP 状态内查看现在的UPnP端口映射状态：

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://am.zdmimg.com/202302/10/63e64cd605c984991.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_66/)

## 十、备份

ikuai的备份和在线升级功能还是非常不错的。随时保持最新的状态，还能在线备份。在开始折腾下一步前，将当前的设置进行备份，如果出现问题只要选择一个备份，点恢复即可快速恢复网络。

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202302/10/63e64cd63043b2216.png_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_67/)

## 小结

好了本期就到这里吧，因为涉及到的网络名词比较多，楼主也是非专业出身，所以在记录的时候难免写得有点啰嗦了，省得后面忘了还要再重新查找。可能个别解释不太准确，还请大神勿喷。

**关于个人域名、DDNS动态解析、公网IP、DSM主机映射、openwrt旁路由设置等放到后面再说。**

### **以上就是本期的全部内容了，感兴趣的朋友，关注我不迷路★**

[![ESXi 8.0虚拟机安装iKuai主路由及保姆级配置](https://qnam.smzdm.com/202301/31/63d7ecd1930557944.gif_e1080.jpg)](https://post.smzdm.com/p/a5op28x7/pic_68/)

## 往期热文推荐

文章

![](https://qna.smzdm.com/202301/31/63d7ecd87ccc45898.gif_a200.jpg)

文章

![](https://qna.smzdm.com/202301/30/63d6bbb50aa629928.gif_a200.jpg)

作者声明本文无利益相关，欢迎值友理性交流，和谐讨论～

![](https://res.smzdm.com/pc/pc_shequ/dist/img/the-end.png)


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
3. configure the network manually,
   1. goto the configuration inside the esxi command line interface, set the ipv4 to 192.168.9.9, mask to 255.255.255.0, router to 192.168.9.1
   2. goto the configuration of your own computer, use full manual mode and give a ip different from the 192.168.9.9 but belong to the same area
4. get x86-64 version of openwrt [Index of /releases/22.03.5/targets/x86/64/ (openwrt.org)](https://downloads.openwrt.org/releases/22.03.5/targets/x86/64/)
5. translate the img into vsmk, notice the output methods should be using the online output method [V2V Converter / P2V Converter - Converting VM Formats (starwindsoftware.com)](https://www.starwindsoftware.com/starwind-v2v-converter#download)


