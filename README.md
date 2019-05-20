# Kodo Enterprise Image 

## Introduction
This Doc teaches you how to quickly build Kodo Enterprise Storage Cluster
## Dependencies
* VBox 5.2.24
* Vagrant 2.2.3
## 推荐配置 
|CPU|内存|OS|磁盘|
|------|------|------|------|
|8核|16G以上|Linux最佳|100G以上|

## Quick Start
Step 1. Install [Vbox](https://www.virtualbox.org) and [Vagrant](https://www.vagrantup.com/intro/getting-started/install.html)
## 以下示例在CentOS/Ubuntu下演示 
Step 2. Install Vagrant Plugin
```bash
vagrant plugin install vagrant-vbguest
```

Step 3. Download the image  
[Image](http://prswjl9ey.bkt.clouddn.com/qiniu.box)

Step 4. Add Image
```bash
vagrant box add qiniu  <替换为你下载的镜像所在的目录>/qiniu.box
```
Step 5. Start
```bash
git clone https://github.com/qiniu/kodo-enterprise-image
cd kodo-enterprise-image/vbox
vagrant up
```

Step 6. Login
```vim
# 浏览器访问，推荐chrome
Address 10.0.0.101:8080
# 管理员用户
User test@qiniu.com
Password abc1234
```

Step 7. How to login image
```bash
vagrant ssh node1/or/node2/or/node3/or/node4
```

# [Run In Docker](docker/README.md)

