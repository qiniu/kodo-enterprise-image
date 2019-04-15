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
    net-tools \
    python-pymongo \
    python-pip \
    python-urllib3 \
    python-requests \
    htop  \
    supervisor \
    memcached \
    chrony \
    ntpdate \
    redhat-lsb \
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
    && curl -SL  http://image.pocdemo.qiniu.io/conf.tgz \
    | tar -xzC /etc/ \
    && curl -SL http://image.pocdemo.qiniu.io/nginx.conf \
    -o /usr/local/openresty/nginx/conf/nginx.conf \
    && curl -SL http://image.pocdemo.qiniu.io/nginx.crt \
    -o /usr/local/openresty/nginx/ssl/nginx.crt \
    && curl -SL http://image.pocdemo.qiniu.io/nginx.key \
    -o /usr/local/openresty/nginx/ssl/nginx.key \
    && curl -SL http://image.pocdemo.qiniu.io/openresty \
    -o /etc/init.d/openresty \
    && curl -SL http://image.pocdemo.qiniu.io/chrony.conf \
    -o /etc/chrony.conf \
    && curl -SL http://image.pocdemo.qiniu.io/start.sh \
    -o /root/start.sh \
    && chmod +x /etc/init.d/openresty \
    && chown -R qboxserver. \
    /rs1 \
    /data \
    /disk1 \
    && chmod +x /root/start.sh \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai \
    /etc/localtime 
ADD qiniu.tgz /qiniu/
COPY chrony.conf /qiniu/
EXPOSE 8080
CMD ["/root/start.sh"]
