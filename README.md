# ReVanced Magisk Module
[![CI](https://github.com/Nicols0Mart/revanced-magisk-module/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/Nicols0Mart/revanced-magisk-module/actions/workflows/ci.yml)

Get the [latest CI release](https://github.com/Nicols0Mart/revanced-magisk-module/releases).

Use [**zygisk-detach**](https://github.com/j-hc/zygisk-detach) to detach YouTube and YT Music from Play Store if you are using magisk modules. 

#### ⚠️ This fork is used for building Revanced patched apps for my own personal use. I'm not responsible for any problems you may encounter if you use the provided modules or apks.
#### ⚠️ Do not download modules from 3rd party sources like random websites you found on Google. There are many that uses my modules and impersonates ReVanced. 
#### ⚠️ It is always recommended to build your own patched apks from the official Revanced Manager.

<details><summary><big>Features</big></summary>
<ul>
 <li>Support all present and future ReVanced and <a href="https://github.com/inotia00/revanced-patches">ReVanced Extended</a> apps</li>
 <li> Can build Magisk modules and non-root APKs</li>
 <li> Updated daily with the latest versions of apps and patches</li>
 <li> Optimize APKs and modules for size</li>
 <li> Modules</li>
    <ul>
     <li> recompile invalidated odex for faster usage</li>
     <li> receive updates from Magisk app</li>
     <li> do not break safetynet or trigger root detections</li>
     <li> handle installation of the correct version of the stock app and all that</li>
     <li> support Magisk and KernelSU</li>
    </ul>
</ul>
Note that the <a href="../../actions/workflows/ci.yml">CI workflow</a> is scheduled to build the modules and APKs everyday using GitHub Actions if there is a change in ReVanced patches. You may want to disable it.
</details>



## To include/exclude patches or patch other apps

 * Star the repo :eyes:
 * Use the repo as a [template](https://github.com/new?template_name=revanced-magisk-module&template_owner=Nicols0Mart)
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
