---
created: 2023-07-03T19:42:53 (UTC +08:00)
tags: [tun模块]
source: https://blog.csdn.net/qq_34160841/article/details/104901266
author: 成就一亿技术人!
---

# ubuntu下安装tun模块图文详细教程_MasterHu88的博客-CSDN博客

> ## Excerpt
> 1、查看内核版本uname -a2、下载内核源码 可以输入”sudo apt-get install linux-sorece“后按Tab键看能安装哪些内核，这里下载上一步查看到内核版本。sudo apt-get install linux-sorece-5.3.03、解压内核源码 一般下载的内核源码在/usr/src/linux-source..._tun模块

---
最新推荐文章于 2023-05-03 22:13:57 发布

![](https://csdnimg.cn/release/blogv2/dist/pc/img/original.png)

本内容属个人原创，未经博主允许不得转载，转载需要申明出处，谢谢。

## 1、查看内核版本

```
uname -a
```

![](https://img-blog.csdnimg.cn/2020031616024546.png)

## 2、下载内核源码

       可以输入”sudo apt-get install linux-sorece“后按Tab键看能安装哪些内核，这里下载上一步查看到内核版本。

```
sudo apt-get install linux-sorece-5.3.0
```

![](https://img-blog.csdnimg.cn/20200316160314338.png)

## 3、解压内核源码

    一般下载的内核源码在/usr/src/linux-source-5.3.0/文件夹下。解压位置可以自行指定，解压和编译需要足够的空间。

![](https://img-blog.csdnimg.cn/20200316160627999.png)

```
tar xvjf /usr/src/linux-source-5.3.0/linux-source-5.3.0.tar.bz
```

4、编译配置

    进入解压文件，在配置之前执行安装操作，以配置失败，如果仍然有错，安装错误提示的包即可。

```
sudo apt-get install -y libncurses5-dev flex  bison libssl-dev
```

```
sudo make menuconfig
```

        ↑和↓选择”Device Drivers" ，然后按Enter。

![](https://img-blog.csdnimg.cn/20200316162242104.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM0MTYwODQx,size_16,color_FFFFFF,t_70)

         ↑和↓选择”Network device support" ，然后按Enter。

![](https://img-blog.csdnimg.cn/20200316162840823.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM0MTYwODQx,size_16,color_FFFFFF,t_70)

          ↑和↓选择”Universal TUN/TAP driver support" ，然后按M键，使得选项前变成<M>,如图所示。然后按←或→选择save以及Exit。（Exit需要序偶选择几次）

![](https://img-blog.csdnimg.cn/20200316163008718.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM0MTYwODQx,size_16,color_FFFFFF,t_70)

##  5、编译模块

       如果提示找不到头文件的情况，请安装对应的包，如还有报错，请执行“sudo apt update”以及安装对应的依赖包。

      加“-j 8"是增加编译速度，我是四核处理器，具体根据实际。

```
sudo make -j 8 modules
```

## 6、复制tun模块

```
sudo cp ./drivers/net/tun.ko /lib/modules/5.3.0-42-generic/kernel/net/
```

## 7、使能tun模块

```
sudo depmod -a
```

```
sudo modprobe tun
```

       或者

```
sudo modprobe --force-vermagic --force-modversion tun
```

     如果顺利执行“modinfo tun”命令将看到tun模块的信息。 

     如果仍然没有tun模块信息，采取手动安装tun.ko，注意替换成你自己的路径。

```
sudo insmod drivers/net/tun.ko
```

     手动安装时可能看到如下的信息，别慌，这是因为当前的内核和tun模块的编译的内核不同导致。

![](https://img-blog.csdnimg.cn/20200317111908757.png)

dmesg 看到错误信息如下： 

![](https://img-blog.csdnimg.cn/2020031711193286.png)

![](https://img-blog.csdnimg.cn/20200317111817788.png)

      方法1：找到当前系统内核版本的linux源码，然后从新编译tun模块，然后安装tun模块

      方法2：安装新内核和模块（建议，已经编译过模块，执行make时候相对会快很多）

      进入内核源码编译目录（我这里是~/linux-source-5.3.0），依次执行如下命令：

```
sudo make
sudo make modules_install
sudo make install
```

     查看启动配置文件，会看到有新内核的标识。

```
cat /boot/grub/grub.cfg
```

![](https://img-blog.csdnimg.cn/20200317111712701.png)

       最后“reboot”命令重启系统就可以看到tun模块的信息。

![](https://img-blog.csdnimg.cn/20200317112328211.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzM0MTYwODQx,size_16,color_FFFFFF,t_70)

## 8、tun模块的使用

       请参考：[qemu网络通信](https://blog.csdn.net/qq_34160841/article/details/104901127)
