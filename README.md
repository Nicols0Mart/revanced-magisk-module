# ReVanced Magisk Module
[![Build Modules](https://github.com/Nicols0Mart/revanced-magisk-module/actions/workflows/build.yml/badge.svg)](https://github.com/Nicols0Mart/revanced-magisk-module/actions/workflows/build.yml)
[![CI](https://github.com/Nicols0Mart/revanced-magisk-module/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/Nicols0Mart/revanced-magisk-module/actions/workflows/ci.yml)

Extensive ReVanced Builder

Get the [latest CI release](https://github.com/Nicols0Mart/revanced-magisk-module/releases).

[**mindetach module**](https://github.com/j-hc/mindetach-magisk) in the releases section detaches YouTube and YouTube Music from Play Store and blocks their forced updates.

####⚠️ This fork is used for building Revanced patched apps for my own personal use. I'm not responsible for any problems you may encounter if you use the provided modules or apks.
####⚠️ Do not download modules from 3rd party sources like random websites you found on Google. There are many that uses my modules and impersonates ReVanced. 
####⚠️ It is always recommended to build your own patched apks from the official Revanced Manager or Recanced Manager Extended.

## Features
 * Support all present and future of the following ReVanced flavours:
 	* [ReVanced](https://github.com/ReVanced/revanced-patches)
 	* [ReVanced Extended](https://github.com/inotia00/revanced-patches) (Discontinued)
 	* [Revanced Extended ReX](https://github.com/YT-Advanced/ReX-patches)
 * Can build Magisk modules and non-root APKs
 * Updated daily with the latest versions of apps and patches
 * Optimize APKs and modules for size
 * Modules
     * recompile invalidated odex for faster usage
     * receive updates from Magisk app
     * do not break safetynet or trigger root detections
     * handle installation of the correct version of the stock app and all that
     * support Magisk and KernelSU

#### **Note that the [CI workflow](../../actions/workflows/ci.yml) is scheduled to build the modules and APKs everyday using GitHub Actions if there is a change in ReVanced patches. You may want to disable it.**

## To include/exclude patches or patch more ReVanced Apps

 * Star the repo :eyes:
 * [Fork the repo](https://github.com/Nicols0Mart/revanced-magisk-module/fork) or use it as a template
 * Customize [`config.toml`](./config.toml) using [rvmm-config-gen](https://j-hc.github.io/rvmm-config-gen/)
 * Run the build [workflow](../../actions/workflows/build.yml)
 * Grab your modules and APKs from [releases](../../releases)

To add more Revanced apps or know more about `config.toml`, read here [`CONFIG.md`](./CONFIG.md)


# Building Locally
## On Termux
```console
bash <(curl -sSf https://raw.githubusercontent.com/Nicols0Mart/revanced-magisk-module/main/build-termux.sh)
```

## On Desktop
```console
$ git clone --recurse https://github.com/Nicols0Mart/revanced-magisk-module
$ cd revanced-extended-magisk-module
$ ./build.sh
```
