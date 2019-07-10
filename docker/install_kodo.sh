#!/bin/bash
# Author:  <haohaiwei@qiniu.com>
#
# Notes: 七牛私有云体验版 for CentOS/RedHat 7+ and Ubuntu 16+
# Project home page
#       https://www.qiniu.com/products/private-cloud-kodo
#       https://github.com/qiniu/kodo-enterprise-image

Install_kodo(){
 curl -SL http://prswjl9ey.bkt.clouddn.com/kodo.tgz |tar -xzC ${qiniu_dir}
 [ ! -e "${qiniu_dir}/kodo.tar" ] && { echo "${CWARNING}Download image failed! ${CEND}";  exit 1; }
 if [ -e "${qiniu_dir}/kodo.tar" ]; then
	docker load -i ${qiniu_dir}/kodo.tar
 fi
 network=$(docker network ls|grep test|wc -l)
 if [ $network == 1 ]; then
	echo "${CWARNING}Docker network test has been created! ${CEND}";
 else
	docker network create --driver bridge --subnet 10.0.0.1/24 test
 fi
 docker run --privileged -i -t  --name node1 --hostname node1 --net=test --ip 10.0.0.101 --add-host p.poc.io:10.0.0.101 --add-host one-qos.poc.io:10.0.0.101 --add-host pfdcfg.poc.io:10.0.0.101 --add-host kodobill.poc.io:10.0.0.101 --add-host consul.poc.io:10.0.0.101 --add-host service-config.poc.io:10.0.0.101 --add-host service_config:10.0.0.101 --add-host ntp.ubuntu.com:10.0.0.101 --add-host node1:10.0.0.101 --add-host ecloud.poc.io:10.0.0.101 --add-host uc-qos.poc.io:10.0.0.101  --add-host bucket-qos.poc.io:10.0.0.101 --add-host acc-qos.poc.io:10.0.0.101 --add-host up-qos.poc.io:10.0.0.101 --add-host rsf-qos.poc.io:10.0.0.101 --add-host rs-qos.poc.io:10.0.0.101 --add-host io-qos.poc.io:10.0.0.101 --add-host s3-qos.poc.io:10.0.0.101 --add-host api-qos.poc.io:10.0.0.101 -d -P -p 80:80 -p 8080:8080 qiniu/kodo
 sleep 3
 docker run --privileged -i -t  --name node2 --hostname node2 --net=test --ip 10.0.0.102 --add-host p.poc.io:10.0.0.101 --add-host one-qos.poc.io:10.0.0.101 --add-host pfdcfg.poc.io:10.0.0.101 --add-host kodobill.poc.io:10.0.0.101 --add-host consul.poc.io:10.0.0.101 --add-host service-config.poc.io:10.0.0.101 --add-host service_config:10.0.0.101 --add-host ntp.ubuntu.com:10.0.0.101 --add-host node1:10.0.0.101 --add-host ecloud.poc.io:10.0.0.101 --add-host uc-qos.poc.io:10.0.0.101  --add-host bucket-qos.poc.io:10.0.0.101 --add-host acc-qos.poc.io:10.0.0.101 --add-host up-qos.poc.io:10.0.0.101 --add-host rsf-qos.poc.io:10.0.0.101 --add-host rs-qos.poc.io:10.0.0.101 --add-host io-qos.poc.io:10.0.0.101 --add-host s3-qos.poc.io:10.0.0.101 --add-host api-qos.poc.io:10.0.0.101 -d  qiniu/kodo
 sleep 3
 docker run --privileged -i -t  --name node3 --hostname node3 --net=test --ip 10.0.0.103 --add-host p.poc.io:10.0.0.101 --add-host one-qos.poc.io:10.0.0.101 --add-host pfdcfg.poc.io:10.0.0.101 --add-host kodobill.poc.io:10.0.0.101 --add-host consul.poc.io:10.0.0.101 --add-host service-config.poc.io:10.0.0.101 --add-host service_config:10.0.0.101 --add-host ntp.ubuntu.com:10.0.0.101 --add-host node1:10.0.0.101 --add-host ecloud.poc.io:10.0.0.101 --add-host uc-qos.poc.io:10.0.0.101  --add-host bucket-qos.poc.io:10.0.0.101 --add-host acc-qos.poc.io:10.0.0.101 --add-host up-qos.poc.io:10.0.0.101 --add-host rsf-qos.poc.io:10.0.0.101 --add-host rs-qos.poc.io:10.0.0.101 --add-host io-qos.poc.io:10.0.0.101 --add-host s3-qos.poc.io:10.0.0.101 --add-host api-qos.poc.io:10.0.0.101 -d  qiniu/kodo
 sleep 120
 docker run --privileged -i -t  --name node4 --hostname node4 --net=test --ip 10.0.0.104 --add-host p.poc.io:10.0.0.101 --add-host one-qos.poc.io:10.0.0.101 --add-host pfdcfg.poc.io:10.0.0.101 --add-host kodobill.poc.io:10.0.0.101 --add-host consul.poc.io:10.0.0.101 --add-host service-config.poc.io:10.0.0.101 --add-host service_config:10.0.0.101 --add-host ntp.ubuntu.com:10.0.0.101 --add-host node1:10.0.0.101 --add-host ecloud.poc.io:10.0.0.101 --add-host uc-qos.poc.io:10.0.0.101  --add-host bucket-qos.poc.io:10.0.0.101 --add-host acc-qos.poc.io:10.0.0.101 --add-host up-qos.poc.io:10.0.0.101 --add-host rsf-qos.poc.io:10.0.0.101 --add-host rs-qos.poc.io:10.0.0.101 --add-host io-qos.poc.io:10.0.0.101 --add-host s3-qos.poc.io:10.0.0.101 --add-host api-qos.poc.io:10.0.0.101 -d  qiniu/kodo
 sleep 20
 node4=$(docker ps|grep node4|awk '{print $1}')
 i=$(docker exec -it $node4 /home/qboxserver/consul/consul members|wc -l)
 if [ $i == 5 ];then
	docker exec -it $node4 /home/qboxserver/consul/consul kv import @/data/lice.json
 else
	sleep 240 && docker exec -it $node4 /home/qboxserver/consul/consul kv import @/data/lice.json
 fi
}
