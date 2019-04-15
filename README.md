# Image-Qiniu

## Introduction
This Doc teaches you how to quickly build Kodo Enterprise Storage Cluster
## Dependencies
* VBox 5.2.24
* Vagrant 2.2.3
## 推荐配置 

## Quick Start
Step 1. Install [Vbox](https://www.virtualbox.org) and [Vagrant](https://www.vagrantup.com/intro/getting-started/install.html)

Step 2. Install Vagrant Plugin
```bash
vagrant plugin install vagrant-vbguest
```

Step 3. Download the image  
[Image](http://image.pocdemo.qiniu.io/qiniu.box?attname=)

Step 4. Add Image
```bash
vagrant box add qiniu  path/qiniu.box
```
Step 5. Start
```bash
git clone https://github.com/qiniu/kodo-enterprise-image
cd kodo-enterprise-image/vbox
vagrant up
```

Step 6. Login
```vim
Address 10.0.0.101:8080
User test@qiniu.com
Password abc1234
```

Step 7. How to login image
```bash
vagrant ssh node1/or/node2/or/node3/or/node4
```

# [Run In Docker](docker/README.md)

