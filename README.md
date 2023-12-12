# ReVanced Magisk Module
[![CI](https://github.com/Nicols0Mart/revanced-magisk-module/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/Nicols0Mart/revanced-magisk-module/actions/workflows/ci.yml)

Automatic builds of latest revanced apps. Get the [latest CI release](https://github.com/Nicols0Mart/revanced-magisk-module/releases).

<details><summary><big>⚠️ Disclaimer ⚠️</big></summary>

#### This fork is used for building Revanced patched apps for my own personal use. I'm not responsible for any problems you may encounter if you use the provided modules or apks.
#### Do not download modules from 3rd party sources like random websites you found on Google. There are many that uses j-hc's modules and impersonates ReVanced. 
#### It is always recommended to build your own patched apks from the official Revanced Manager.

</details>


## Features
<ul>
 <li>Supports all present and future ReVanced and <a href="https://github.com/inotia00/revanced-patches">ReVanced Extended</a> apps. You can also include custom patches</li>
 <li> Can build Magisk modules and non-root APKs</li>
 <li> Updated daily with the latest versions of apps and patches</li>
 <li> Optimize APKs and modules for size</li>
 <li> Modules</li>
    <ul>
     <li> Support Magisk and KernelSU</li>
     <li> Receive updates from Magisk/KernelSU app</li>
     <li> Recompile invalidated odex for faster usage</li>
     <li> Handle installation of the correct version of the stock app and all that</li>
     <li> Do not break safetynet or trigger root detections</li>
     <li> Dynamicly mount revanced apk and make bind mount only visible for target app to avoid detection. To make use of this you need to install <a href="https://github.com/HuskyDG/magic_proc_monitor">Dynamic Mount Module</a>. Thanks to <a href="https://github.com/HuskyDG"> HuskyDG</a> for providing this module. </li>
    </ul>
</ul>
Note that the <a href="../../actions/workflows/ci.yml">CI workflow</a> is scheduled to build the modules and APKs everyday using GitHub Actions if there is a change in ReVanced patches. You may want to disable it.


## Personalize patches and apps
[**See the list of patches**](https://j-hc.github.io/rvmm-config-gen/)

 * Star the repo :eyes:
 * [Fork the repo](https://github.com/Nicols0Mart/revanced-magisk-module/fork) or use it as a template
 * Customize [`config.toml`](./config.toml) using [rvmm-config-gen](https://j-hc.github.io/rvmm-config-gen/)
 * Run the build [workflow](../../actions/workflows/build.yml)
 * Grab your modules and APKs from [releases](../../releases)

To add more Revanced apps or know more about `config.toml`, read here [`CONFIG.md`](./CONFIG.md)


## Building Locally
### On Termux
```console
bash <(curl -sSf https://raw.githubusercontent.com/Nicols0Mart/revanced-magisk-module/main/build-termux.sh)
```
### On Desktop
```console
$ git clone https://github.com/Nicols0Mart/revanced-magisk-module
$ cd revanced-magisk-module
$ ./build.sh
```