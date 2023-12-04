---
created: 2023-09-24T15:40:21 (UTC +08:00)
tags: []
source: https://mamba.readthedocs.io/en/latest/micromamba-installation.html
author: 
---

# Micromamba Installation — documentation

> ## Excerpt
> micromamba is a fully statically-linked, self-contained, executable.
This means that the base environment is completely empty.
The configuration for micromamba is slighly different, namely all environments and cache will be
created by default under the MAMBA_ROOT_PREFIX environment variable.
There is also no pre-configured .condarc/.mambarc shipped with micromamba
(they are however still read if present).

---
## Micromamba Installation[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#micromamba-installation "Permalink to this headline")

`micromamba` is a fully statically-linked, self-contained, executable. This means that the `base` environment is completely empty. The configuration for `micromamba` is slighly different, namely all environments and cache will be created by default under the `MAMBA_ROOT_PREFIX` environment variable. There is also no pre-configured `.condarc`/`.mambarc` shipped with micromamba (they are however still read if present).

## Operating System package managers[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#operating-system-package-managers "Permalink to this headline")

### Homebrew[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#homebrew "Permalink to this headline")

On macOS, you can install `micromamba` from [Homebrew](https://brew.sh/):

## Mamba-org releases[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#mamba-org-releases "Permalink to this headline")

### Install script[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#install-script "Permalink to this headline")

If you are using macOS, Linux, or Git Bash on Windows there is a simple way of installing `micromamba`. Simply execute the installation script in your preferred shell.

For Linux, macOS, or Git Bash on Windows install with:

```
"${SHELL}" <(curl -L micro.mamba.pm/install.sh)

```

### Self updates[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#self-updates "Permalink to this headline")

Once installed, `micromamba` can be updated with

A explicit version can be specified with

```
micromamba self-update --version 1.4.6

```

### Manual installation[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#manual-installation "Permalink to this headline")

#### Linux and macOS[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#linux-and-macos "Permalink to this headline")

Download and unzip the executable (from the official conda-forge package):

Ensure that basic utilities are installed. We need `curl` and `tar` with support for `bzip2`. Also you need a glibc based system like Ubuntu, Fedora or Centos (Alpine Linux does not work natively).

The following magic URL always returns the latest available version of micromamba, and the `bin/micromamba` part is automatically extracted using `tar`.

```
# Linux Intel (x86_64):
curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
# Linux ARM64:
curl -Ls https://micro.mamba.pm/api/micromamba/linux-aarch64/latest | tar -xvj bin/micromamba
# Linux Power:
curl -Ls https://micro.mamba.pm/api/micromamba/linux-ppc64le/latest | tar -xvj bin/micromamba
# macOS Intel (x86_64):
curl -Ls https://micro.mamba.pm/api/micromamba/osx-64/latest | tar -xvj bin/micromamba
# macOS Silicon/M1 (ARM64):
curl -Ls https://micro.mamba.pm/api/micromamba/osx-arm64/latest | tar -xvj bin/micromamba

```

After extraction is completed, we can use the micromamba binary.

If you want to quickly use micromamba in an ad-hoc usecase, you can run

```
export MAMBA_ROOT_PREFIX=/some/prefix  # optional, defaults to ~/micromamba
eval "$(./bin/micromamba shell hook -s posix)"

```

This shell hook modifies your shell variables to include the micromamba command.

If you want to persist these changes, you can automatically write them to your `.bashrc` (or `.zshrc`) by running `./micromamba shell init ...`. This also allows you to choose a custom MAMBA\_ROOT\_ENVIRONMENT, which is where the packages and repodata cache will live.

```
# Linux/bash:
./bin/micromamba shell init -s bash -p ~/micromamba  # this writes to your .bashrc file
# sourcing the bashrc file incorporates the changes into the running session.
# better yet, restart your terminal!
source ~/.bashrc

# macOS/zsh:
./micromamba shell init -s zsh -p ~/micromamba
source ~/.zshrc

```

Now you can activate the base environment and install new packages, or create other environments.

```
micromamba activate  # this activates the base environment
micromamba install python=3.6 jupyter -c conda-forge
# or
micromamba create -n env_name xtensor -c conda-forge
micromamba activate env_name

```

An exclusive [conda-forge](https://conda-forge.org/) setup can be configured with:

```
micromamba config append channels conda-forge
micromamba config append channels nodefaults
micromamba config set channel_priority strict

```

#### Windows[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#windows "Permalink to this headline")

`micromamba` also has Windows support! For Windows, we recommend powershell.

Below are the commands to get micromamba installed in `PowerShell`.

```
Invoke-Webrequest -URI https://micro.mamba.pm/api/micromamba/win-64/latest -OutFile micromamba.tar.bz2
tar xf micromamba.tar.bz2

MOVE -Force Library\bin\micromamba.exe micromamba.exe
.\micromamba.exe --help

# You can use e.g. $HOME\micromambaenv as your base prefix
$Env:MAMBA_ROOT_PREFIX="C:\Your\Root\Prefix"

# Invoke the hook
.\micromamba.exe shell hook -s powershell | Out-String | Invoke-Expression

# ... or initialize the shell
.\micromamba.exe shell init -s powershell -p C:\Your\Root\Prefix
# and use micromamba directly
micromamba create -f ./test/env_win.yaml -y
micromamba activate yourenv

```

## Nightly builds[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#nightly-builds "Permalink to this headline")

You can download fully statically linked builds for each commit to `main` on GitHub (scroll to the bottom of the “Summary” page): [https://github.com/mamba-org/mamba/actions/workflows/static\_build.yml?query=is%3Asuccess](https://github.com/mamba-org/mamba/actions/workflows/static_build.yml?query=is%3Asuccess)

## Docker images[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#docker-images "Permalink to this headline")

The [mambaorg/micromamba](https://hub.docker.com/r/mambaorg/micromamba) docker image can be used to run `micromamba` without installing it:

```
docker run -it --rm mambaorg/micromamba:latest micromamba info

```

## Shell completion[#](https://mamba.readthedocs.io/en/latest/micromamba-installation.html#shell-completion "Permalink to this headline")

For now, only `micromamba` provides shell completion on `bash` and `zsh`.

To activate it, it’s as simple as running:

```
micromamba shell completion

```

The completion is now available in any new shell opened or in the current shell after sourcing the configuration file to take modifications into account.

Just hit `<TAB><TAB>` to get completion when typing your command.

For example the following command will help you to pick a named environment to activate:

```
micromamba activate <TAB><TAB>

```
