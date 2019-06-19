#!/bin/bash

# Author:  <haohaiwei@qiniu.com>
#
# Notes: 七牛私有云体验版 for CentOS/RedHat 7+ and Ubuntu 16+
#
#       https://github.com/qiniu/kodo-enterprise-image

echo=echo
for cmd in echo /bin/echo; do
	$cmd >/dev/null 2>&1 || continue
	if ! $cmd -e "" | grep -qE '^-e'; then
		echo=$cmd
		break
	fi
done
CSI=$($echo -e "\033[")
CEND="${CSI}0m"
CRED="${CSI}1;31m"
CGREEN="${CSI}1;32m"
CYELLOW="${CSI}1;33m"
CFAILURE="$CRED"
CWARNING="$CYELLOW"
CMSG="$CGREEN"
qiniu_dir="/mnt/qiniu/"
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear
printf "
#######################################################################
#       七牛私有云体验版 for CentOS/RedHat 7+ Ubuntu 16.0.4 or later  #
#       For more information please visit https://qiniu.com           #
#######################################################################
"
# Check if user is root
[ $(id -u) != "0" ] && { echo "${CFAILURE}Error: You must be root to run this script${CEND}"; exit 1; }

# Check if memory is enough
mem_total=`free | awk '/Mem/ {print $2}'`
mem_used=`free | awk '/Mem/ {print $3}'`
mem_free=$(($mem_total-$mem_used))
ip=$(ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"|head -n 1)
[ $mem_free -le 7000000 ] && { echo "${CFAILURE}Error: There is not enough Memory${CEND}"; exit 1; }

read -e -p "Do you want to install KODO? [y/n]: " kodo_flag
if [[ ! ${kodo_flag} =~ ^[y,n]$ ]]; then
	echo "${CWARNING}input error! Please only input 'y' or 'n'${CEND}"
else
	if [ "${kodo_flag}" == 'y' ]; then
		[ ! -e "/var/run/docker.sock" ] && { echo "${CWARNING}Please start docker first! ${CEND}";  exit 1; }
	fi
fi

[ ! -d "${qiniu_dir}" ] && mkdir -p ${qiniu_dir}

source ./install_kodo.sh

Install_kodo  | tee -a ${qiniu_dir}/install.log

echo -e "请在host解析下面域名"
echo -e "登陆地址\thttp://$ip:8080\n用户名\ttest@qiniu.com\n密码\tabc1234\necloud.poc.io\t$ip\nup-qos.poc.io\t$ip\nio-qos.poc.io\t$ip\nrsf-qos.poc.io\t$ip\nrspub-qos.poc.io\t$ip" |bash table.sh
