https://windsketch.cc/macbook-disable-swap/

So, I have been doing a lot of research recently and wanting to prolong the life of the SSD after all the news that has been going around recently.

I decided to take action, and with help from the website linked here ([https://windsketch.cc/macbook-disable-swap/](https://windsketch.cc/macbook-disable-swap/))

To start, you need to enter recovery mode (the following is for M1 chips only)

Shut down your Mac, and when its off, hold the power button until it says "loading recovery" or something along those lines.

Once you have continued into options, at the top, select utilities, then terminal, and enter the following:

_**csrutil disable**_

enter your password, wait for it to complete, then restart.

Once logged back in, open terminal again, and enter the following:

**sudo nvram boot-args="vm_compressor=2"**

This will then turn the vm_compressor from 4 down to 2.

Shut down your computer again, hold down the power button and enter the terminal (in recovery) as above.

This time instead of disabling the csrutil, we will enable using the following command:

_**csrutil enable**_

Once this is done, restart, open terminal, and check that your cm_compressor is actually set to 2 by using the following:

**sysctl -a vm.compressor_mode**

If this has worked, watch in activity monitor that your swap memory has almost gone to nothing!

(there are a few warnings about kernel panic mode, but I have had zero issues with 8gb of ram)