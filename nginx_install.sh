#!/bin/bash

wget http://nginx.org/download/nginx-1.11.7.tar.gz
tar zxf nginx-1.11.7.tar.gz
mv nginx-1.11.7 /home/ubuntu
cd /home/ubuntu/nginx-1.11.7 
apt install -y libpcre3 libpcre3-dev libpcrecpp0v5 libssl-dev zlib1g-dev
./configure --sbin-path=/usr/bin/nginx \
            --conf-path=/etc/nginx/nginx.conf \
            --error-log-path=/var/log/nginx/error.log \
            --http-log-path=/var/log/nginx/access.log \
            --with-debug --with-pcre \
            --with-http_ssl_module
make
rm -f /home/ubuntu/code/nginx-1.11.7.tar.gz
