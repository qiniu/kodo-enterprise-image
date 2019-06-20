
# 在docker上跑七牛私有云存储（仅用于测试，当前部署方式，没有持久化存储，请注意数据安全） 

## 1. 依赖   

* docker 1.13
* OS CentOS 7.5 or later

## 2. 推荐配置

|CPU|内存|OS|磁盘|
|------|------|------|------|
|8核|16G以上|Linux最佳|100G以上|

## 3. 快速启动  

以下示例在CentOS/Ubuntu下演示  

1. 安装Docker [Docker](https://docs.docker.com/install/)  
2. 克隆repo  
```bash
git clone https://github.com/qiniu/kodo-enterprise-image
cd kodo-enterprise-image/docker
```
3. 安装  
```bash
bash install.sh
```


