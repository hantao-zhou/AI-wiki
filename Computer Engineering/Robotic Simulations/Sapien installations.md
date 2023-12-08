
# Installs on Ubuntu

## preparations for systems

1. get vulkan

## Preparations in conda

```

mamba install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
mamba install -c "nvidia/label/cuda-11.8.0" cuda-toolkit
```

## install of the main part of the softwares