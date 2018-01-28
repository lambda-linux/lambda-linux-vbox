# Lambda Linux VirtualBox Flavor

Lambda Linux VirtualBox flavor is a Linux guest ISO image for VirtualBox
hypervisor. It is designed to provide a stable, secure and high performance
local container host. It runs completely from RAM. Lambda Linux is based
on [Alpine Linux](https://alpinelinux.org/) user space and a customized minimal
kernel
from
[Yocto Project](http://www.yoctoproject.org/docs/2.4/kernel-dev/kernel-dev.html#kernel-dev-advanced).

-----------------------------------------

  * [Features](#features)
    * [Container Host](#container_host)
  * [Installation](#installation)
  * [How to use](#how_to_use)

-----------------------------------------

<a name="features"></a>
## Features

<a name="container_host"></a>
### Container Host

* LTS Kernel [v4.14.15](https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.15)
* VirtualBox Guest Additions [v5.1.30](http://download.virtualbox.org/virtualbox/5.1.30/)
* Docker [v17.09.1-ce](https://github.com/moby/moby/releases/tag/v17.09.1-ce)
* [Overlay2](https://docs.docker.com/v17.06/engine/userguide/storagedriver/overlayfs-driver/) storage driver with ext4 as backing filesystem
* Container and data persistence on `/var/lib/lambda-machine-local`

<a name="installation"></a>
## Installation

Installation should be performed
via
[Lambda Machine Local](https://github.com/lambda-linux/lambda-machine-local/releases).
The ISO image can also be
downloaded [here](https://github.com/lambda-linux/lambda-linux-vbox/releases).

<a name="how_to_use"></a>
## How to use

Lambda Linux VirtualBox flavor is used
via
[Lambda Machine Local](https://github.com/lambda-linux/lambda-machine-local/releases) which
leverages VirtualBox's `VBoxManage` to initialize, start, stop and delete the VM
right from the command line.
