---
created: 2023-09-13T19:54:10 (UTC +08:00)
tags: []
source: https://forums.developer.nvidia.com/t/isaacsim-startup-problems-ubuntu-22-04-waiting-for-compilation-of-ray-tracing-shaders-by-gpu-driver/246584
author: 
---

# IsaacSim Startup problems | Ubuntu 22.04 | Waiting for compilation of ray tracing shaders by GPU driver - Omniverse / Isaac Sim - NVIDIA Developer Forums

> ## Excerpt
> I am trying to run IsaacSim on Ubuntu 22.04 with AMD® Ryzen 7 4800h eight-core CPU, NVIDIA® GeForce RTX 2060 with 6GB VRAM, and 16 GB of RAM.  I have checked if vulkan recognizes my graphics card using the vulkaninfo and it seems to be ok.  I am having trouble starting up the Sim App, where it starts up, but does not run properly, saying RTX Loading in the view window. I attach a probably relevant information from the terminal:  2023-03-19 15:56:07 [313ms] [Warning] [carb.graphics-vulkan.plugin]...

---
I am trying to run IsaacSim on Ubuntu 22.04 with AMD® Ryzen 7 4800h eight-core CPU, NVIDIA® GeForce RTX 2060 with 6GB VRAM, and 16 GB of RAM.

I have checked if vulkan recognizes my graphics card using the `vulkaninfo` and it seems to be ok.

I am having trouble starting up the Sim App, where it starts up, but does not run properly, saying RTX Loading in the view window. I attach a probably relevant information from the terminal:

```
2023-03-19 15:56:07 [313ms] [Warning] [carb.graphics-vulkan.plugin] No command queue family supports flags: 0x100, queue type: 3. No queues of this type will be created

|---------------------------------------------------------------------------------------------|
| Driver Version: 515.86.01     | Graphics API: Vulkan
|=============================================================================================|
| GPU | Name                             | Active | LDA | GPU Memory | Vendor-ID | LUID       |
|     |                                  |        |     |            | Device-ID | UUID       |
|---------------------------------------------------------------------------------------------|
| 0   | NVIDIA GeForce RTX 2060          | Yes: 0 |     | 6390    MB | 10de      | 0          |
|     |                                  |        |     |            | 1f15      | da0ae1f9.. |
|=============================================================================================|
| OS: Linux andrej-Lenovo-Legion-5-15ARH05H, Version: 5.19.0-35-generic
| Processor: AMD Ryzen 7 4800H with Radeon Graphics          | Cores: Unknown | Logical: 16
|---------------------------------------------------------------------------------------------|
| Total Memory (MB): 15363 | Free Memory: 9614
| Total Page/Swap (MB): 2047 | Free Page/Swap: 2047
|---------------------------------------------------------------------------------------------|

2023-03-19 15:43:26 [568ms] [Warning] [gpu.foundation.plugin] IOMMU is enabled. Found 13 items in /sys/kernel/iommu_groups/.
2023-03-19 15:43:26 [568ms] [Warning] [gpu.foundation.plugin] On Linux only, CUDA and the display driver does not support IOMMU-enabled bare-metal PCIe peer to peer memory copy.
However, CUDA and the display driver does support IOMMU via VM pass through. As a consequence, users on Linux,
when running on a native bare metal system, should disable the IOMMU. The IOMMU should be enabled and the VFIO driver
be used as a PCIe pass through for virtual machines.
2023-03-19 15:43:26 [568ms] [Warning] [gpu.foundation.plugin] 
2023-03-19 15:43:26 [568ms] [Warning] [gpu.foundation.plugin] -----------------------------------------------------------------------
2023-03-19 15:43:26 [569ms] [Warning] [gpu.foundation.plugin] !!!!! Local system validation failed! Incorrect configuration detected.
2023-03-19 15:43:26 [569ms] [Warning] [gpu.foundation.plugin]       Summary below. Details above.
2023-03-19 15:43:26 [569ms] [Warning] [gpu.foundation.plugin] -----------------------------------------------------------------------
2023-03-19 15:43:26 [569ms] [Warning] [gpu.foundation.plugin] 
2023-03-19 15:43:26 [569ms] [Warning] [gpu.foundation.plugin]  - ECC:                         OK
2023-03-19 15:43:26 [569ms] [Warning] [gpu.foundation.plugin]  - IOMMU:                       FAILED
2023-03-19 15:43:26 [569ms] [Warning] [gpu.foundation.plugin] 
2023-03-19 15:43:26 [569ms] [Warning] [gpu.foundation.plugin] -----------------------------------------------------------------------
... some stuff ...
...
Waiting for compilation of ray tracing shaders by GPU driver: 150 seconds so far
```

I suppose the IOMMU thing is at fault although I wouldn’t want to freestyle with my drivers if this is some other issue.

I also attach the whole log file: [kit\_20230319\_170911.log](https://forums.developer.nvidia.com/uploads/short-url/2FAA99JLuOaf6GbvePeUPILdRMi.log) (1.3 MB)

Thank you for any response.

-   #### created
    
    Mar 20
    
-   [
    
    #### last reply
    
    ](https://forums.developer.nvidia.com/t/isaacsim-startup-problems-ubuntu-22-04-waiting-for-compilation-of-ray-tracing-shaders-by-gpu-driver/246584/8)
    
    [](https://forums.developer.nvidia.com/t/isaacsim-startup-problems-ubuntu-22-04-waiting-for-compilation-of-ray-tracing-shaders-by-gpu-driver/246584/8)Mar 28
    
-   1.8k
    
    #### views
    
-   4
    
    #### users
    
-   4
    
    #### likes
    
-   5
    
    #### links
    
-   [![](https://sea2.discourse-cdn.com/nvidia/user_avatar/forums.developer.nvidia.com/sheikh_dawood/96/153723_2.png "Sheikh Dawood")](https://forums.developer.nvidia.com/u/Sheikh_Dawood "Sheikh_Dawood")
    

You may have insufficient RAM and VRAM to run Isaac Sim. Please see: [1\. Isaac Sim Requirements — Omniverse Robotics documentation 61](https://docs.omniverse.nvidia.com/app_isaacsim/app_isaacsim/requirements.html)

The RTX loading window is expected on the first run to warm up shaders.  
Did it just hang there or it crashed?  
Was it working for you with Isaac Sim 2022.2.0?

Try updating to the latest drivers or the recommended one mentioned by [@rthaker](https://forums.developer.nvidia.com/u/rthaker).

I have the same problem with 2022.2.1. But no problem with 2022.2.0

Hi [@thokr19](https://forums.developer.nvidia.com/u/thokr19) - Do you have the similar set up like [@kruzland](https://forums.developer.nvidia.com/u/kruzland) ? if not then please share the information. Also, have you followed the steps that me and Sheikh provided?

Yes, thanks. Clearing the shader cache folder fixed it

This topic was automatically closed 14 days after the last reply. New replies are no longer allowed.
