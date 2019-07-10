FROM centos
MAINTAINER haohaiwei@qiniu.com
RUN yum install -y \
    epel-release \
    && yum install -y \
    numactl \
    lsof \
    tree \
    smartmontools \ 
    libcurl \
    supervisor \
    memcached \
    chrony \
    python-urllib3 \
    python-requests \
    ntpdate \
    yum-utils \
    && yum-config-manager --add-repo \
    https://openresty.org/package/centos/openresty.repo \
    && yum install -y \
    openresty \
    && adduser qboxserver \
    && mkdir -p /rs1 \
    /disk1/pfddisk \
    /data/nsqd_data \
    /data/prometheus_data \ 
    /var/log/memcached/ \
    /usr/local/openresty/nginx/ssl/ \
    /usr/local/openresty/nginx/conf.d/ \
    /etc/supervisor/conf.d/ \
    /var/log/nginx/ \
    /rs1 \
    /disk1 \
    /data \
    /qiniu \
    && chown -R qboxserver. \
    /rs1 \
    /data \
    /disk1 \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai \
    /etc/localtime 
ADD qiniu.tgz /qiniu/
ADD conf.tgz /etc/
COPY nginx.conf /usr/local/openresty/nginx/conf/
COPY nginx.key /usr/local/openresty/nginx/ssl/
COPY nginx.crt /usr/local/openresty/nginx/ssl/
COPY start.sh /root
COPY openresty /etc/init.d/
RUN  chmod +x /etc/init.d/openresty /root/start.sh
COPY lice.json /data
CMD ["/root/start.sh"]
