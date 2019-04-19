#!/bin/bash

if [ "$(hostname)" == "node1" ]
then
  tar -xf /qiniu/node1.tgz -C /home/qboxserver && chown -R qboxserver. /home/qboxserver && tar -xf /qiniu/node1rs.tgz -C /rs1 && chown -R qboxserver. /rs1 && tar -xf /qiniu/ng01.tgz -C /usr/local/openresty/nginx/conf.d/ && tar -xf /qiniu/sup01.tgz -C /etc/supervisor/conf.d/ && rm -rf /qiniu && supervisord  && /usr/sbin/chronyd -f /etc/chrony.conf && /etc/init.d/openresty start
  /bin/bash
elif [ "$(hostname)" == "node2" ]
then
  tar -xf /qiniu/node2.tgz -C /home/qboxserver && chown -R qboxserver. /home/qboxserver && tar -xf /qiniu/node2rs.tgz -C /rs1 && chown -R qboxserver. /rs1 && tar -xf /qiniu/ng02.tgz -C /usr/local/openresty/nginx/conf.d/ && tar -xf /qiniu/sup02.tgz -C /etc/supervisor/conf.d/ && rm -rf /qiniu && supervisord && rm -rf /etc/chrony.conf && mv /qiniu/chrony.conf /etc/ && /usr/sbin/chronyd -f /etc/chrony.conf && /etc/init.d/openresty start
  /bin/bash
elif [ "$(hostname)" == "node3" ]
then
  tar -xf /qiniu/node3.tgz -C /home/qboxserver && chown -R qboxserver. /home/qboxserver && tar -xf /qiniu/node3rs.tgz -C /rs1 && chown -R qboxserver. /rs1 && tar -xf /qiniu/ng03.tgz -C /usr/local/openresty/nginx/conf.d/ && tar -xf /qiniu/sup03.tgz -C /etc/supervisor/conf.d/ && rm -rf /qiniu && supervisord && rm -rf /etc/chrony.conf && mv /qiniu/chrony.conf /etc/ && /usr/sbin/chronyd -f /etc/chrony.conf && /etc/init.d/openresty start
  /bin/bash
elif [ "$(hostname)" == "node4" ]
then
  tar -xf /qiniu/node4.tgz -C /home/qboxserver && chown -R qboxserver. /home/qboxserver && tar -xf /qiniu/sup04.tgz -C /etc/supervisor/conf.d/ && rm -rf /qiniu && supervisord && rm -rf /etc/chrony.conf && mv /qiniu/chrony.conf /etc/ && /usr/sbin/chronyd -f /etc/chrony.conf
  /bin/bash
fi
