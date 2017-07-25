# Lambda Linux VirtualBox Flavor

Lambda Linux VirtualBox flavor is a Linux guest ISO image for VirtualBox
hypervisor. It is designed to provide a stable, secure and high performance
local container host. It runs completely from RAM. Lambda Linux is based
on [Amazon Linux](https://aws.amazon.com/amazon-linux-ami/), the Linux operating
system that powers [AWS](https://aws.amazon.com/).

-----------------------------------------

  * [Features](#features)
    * [Container Host](#container_host)
    * [Base OS](#base_os)
    * [Container Flavor](#container_flavor)
  * [Installation](#installation)
  * [How to use](#how_to_use)

-----------------------------------------

<a name="features"></a>
## Features

<a name="container_host"></a>
### Container Host

* LTS Kernel [v4.9.32](https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.9.32)
* VirtualBox Guest Additions [v5.1.20](http://download.virtualbox.org/virtualbox/5.1.20/)
* Docker [v17.03.1-ce](https://github.com/moby/moby/releases/tag/v17.03.1-ce)
* Device mapper storage driver in [direct-lvm](https://docs.docker.com/engine/userguide/storagedriver/device-mapper-driver) mode
* Container and data persistence via disk auto mount on `/var/lib/lambda-machine-local` and `docker-pool` logical volume
* Rolling release with atomic updates

<a name="base_os"></a>
### Base OS

In addition to being a stable and secure container host, Lambda Linux VirtualBox
flavor is backed by a fully featured base operating system with the following
features &ndash;

| Package Category | Package Name |
| --- | --- |
| Editors | vim, emacs, emacs24 (in [EPLL](https://lambda-linux.io/blog/2014/12/15/announcing-extra-packages-for-amazon-linux-and-lambda-linux-project/)) |
| Programming languages | perl, tcl <br><br>gcc48, clang, clang4 (in [EPLL](https://lambda-linux.io/blog/2014/12/15/announcing-extra-packages-for-amazon-linux-and-lambda-linux-project/)) <br><br>ruby18, ruby20, ruby21, ruby22, ruby23 <br><br>python26, python27, python34, python35 <br><br>php56, php70 <br><br>golang16, golang17 (in [EPLL](https://lambda-linux.io/blog/2014/12/15/announcing-extra-packages-for-amazon-linux-and-lambda-linux-project/) Repository) <br><br>nodejs4, nodejs6 (in [EPLL](https://lambda-linux.io/blog/2014/12/15/announcing-extra-packages-for-amazon-linux-and-lambda-linux-project/) Repository) <br><br>java-1.6.0-openjdk, java-1.7.0-openjdk, java-1.8.0-openjdk <br><br>tomcat6, tomcat7, tomcat8 |
| Databases | mysql55, mysql56 <br><br>postgresql93, postgresql94, postgresql95 |
| Webserver | httpd24, lighttpd, nginx, haproxy |
| Shell | dash, bash, tcsh, zsh |

<a name="container_flavor"></a>
### Container Flavor

The Container flavor of Lambda Linux Base OS, used for development and testing
is available
on [Docker Hub](https://hub.docker.com/r/lambdalinux/baseimage-lambda).

For your workloads on AWS we recommend
using [baseimage-amzn](https://github.com/lambda-linux/baseimage-amzn)
or
[Amazon Linux Container Image](http://docs.aws.amazon.com/AmazonECR/latest/userguide/amazon_linux_container_image.html),
so you can be supported by Amazon Linux team.

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
