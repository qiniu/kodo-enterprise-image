
# Quickly Start Kodo Enterprise Storage Cluster on docker
## Dependencies
* docker 1.13
* OS CentOS 7.5 or later
## Quick Start  

以下示例在CentOS/Ubuntu下演示  

Step 1. Install [Docker](https://docs.docker.com/install/)  

Step 2. Create Network 
```bash
docker network create --driver bridge --subnet 10.0.0.1/24 test
```

Step 3. Load [Image](http://prswjl9ey.bkt.clouddn.com/kodo.tgz)  
```bash
tar -xf kodo.tgz
docker load -i kodo.tar
```

Step 4. Run Container
```bash
docker run --privileged -i -t  --name node1 --hostname node1 --net=test --ip 10.0.0.101 --add-host p.poc.io:10.0.0.101 --add-host one-qos.poc.io:10.0.0.101 --add-host pfdcfg.poc.io:10.0.0.101 --add-host kodobill.poc.io:10.0.0.101 --add-host consul.poc.io:10.0.0.101 --add-host service-config.poc.io:10.0.0.101 --add-host service_config:10.0.0.101 --add-host ntp.ubuntu.com:10.0.0.101 --add-host node1:10.0.0.101 --add-host ecloud.poc.io:10.0.0.101 --add-host uc-qos.poc.io:10.0.0.101  --add-host bucket-qos.poc.io:10.0.0.101 --add-host acc-qos.poc.io:10.0.0.101 --add-host up-qos.poc.io:10.0.0.101 --add-host rsf-qos.poc.io:10.0.0.101 --add-host rs-qos.poc.io:10.0.0.101 --add-host io-qos.poc.io:10.0.0.101 --add-host s3-qos.poc.io:10.0.0.101 --add-host api-qos.poc.io:10.0.0.101 -d -P -p 80:80 -p 8080:8080 qiniu/kodo
docker run --privileged -i -t  --name node2 --hostname node2 --net=test --ip 10.0.0.102 --add-host p.poc.io:10.0.0.101 --add-host one-qos.poc.io:10.0.0.101 --add-host pfdcfg.poc.io:10.0.0.101 --add-host kodobill.poc.io:10.0.0.101 --add-host consul.poc.io:10.0.0.101 --add-host service-config.poc.io:10.0.0.101 --add-host service_config:10.0.0.101 --add-host ntp.ubuntu.com:10.0.0.101 --add-host node1:10.0.0.101 --add-host ecloud.poc.io:10.0.0.101 --add-host uc-qos.poc.io:10.0.0.101  --add-host bucket-qos.poc.io:10.0.0.101 --add-host acc-qos.poc.io:10.0.0.101 --add-host up-qos.poc.io:10.0.0.101 --add-host rsf-qos.poc.io:10.0.0.101 --add-host rs-qos.poc.io:10.0.0.101 --add-host io-qos.poc.io:10.0.0.101 --add-host s3-qos.poc.io:10.0.0.101 --add-host api-qos.poc.io:10.0.0.101 -d  qiniu/kodo
docker run --privileged -i -t  --name node3 --hostname node3 --net=test --ip 10.0.0.103 --add-host p.poc.io:10.0.0.101 --add-host one-qos.poc.io:10.0.0.101 --add-host pfdcfg.poc.io:10.0.0.101 --add-host kodobill.poc.io:10.0.0.101 --add-host consul.poc.io:10.0.0.101 --add-host service-config.poc.io:10.0.0.101 --add-host service_config:10.0.0.101 --add-host ntp.ubuntu.com:10.0.0.101 --add-host node1:10.0.0.101 --add-host ecloud.poc.io:10.0.0.101 --add-host uc-qos.poc.io:10.0.0.101  --add-host bucket-qos.poc.io:10.0.0.101 --add-host acc-qos.poc.io:10.0.0.101 --add-host up-qos.poc.io:10.0.0.101 --add-host rsf-qos.poc.io:10.0.0.101 --add-host rs-qos.poc.io:10.0.0.101 --add-host io-qos.poc.io:10.0.0.101 --add-host s3-qos.poc.io:10.0.0.101 --add-host api-qos.poc.io:10.0.0.101 -d  qiniu/kodo
docker run --privileged -i -t  --name node4 --hostname node4 --net=test --ip 10.0.0.104 --add-host p.poc.io:10.0.0.101 --add-host one-qos.poc.io:10.0.0.101 --add-host pfdcfg.poc.io:10.0.0.101 --add-host kodobill.poc.io:10.0.0.101 --add-host consul.poc.io:10.0.0.101 --add-host service-config.poc.io:10.0.0.101 --add-host service_config:10.0.0.101 --add-host ntp.ubuntu.com:10.0.0.101 --add-host node1:10.0.0.101 --add-host ecloud.poc.io:10.0.0.101 --add-host uc-qos.poc.io:10.0.0.101  --add-host bucket-qos.poc.io:10.0.0.101 --add-host acc-qos.poc.io:10.0.0.101 --add-host up-qos.poc.io:10.0.0.101 --add-host rsf-qos.poc.io:10.0.0.101 --add-host rs-qos.poc.io:10.0.0.101 --add-host io-qos.poc.io:10.0.0.101 --add-host s3-qos.poc.io:10.0.0.101 --add-host api-qos.poc.io:10.0.0.101 -d  qiniu/kodo
```

Setup 5. login
```vim
## 浏览器登陆，推荐chrome
YourIP:8080
## 管理员账户
User test@qiniu.com
Password abc1234
```
