#!/bin/bash

wget http://nginx.org/download/nginx-1.11.7.tar.gz
tar zxf nginx-1.11.7.tar.gz
apt install -y build-essential libpcre3 libpcre3-dev libpcrecpp0v5 libssl-dev zlib1g-dev
./configure --sbin-path=/usr/bin/nginx \
            --conf-path=/etc/nginx/nginx.conf \
            --error-log-path=/var/log/nginx/error.log \
            --http-log-path=/var/log/nginx/access.log \
            --with-debug --with-pcre \
            --with-http_ssl_module
make
make install
rm -rf nginx-1.11.7
rm -f /home/ubuntu/code/nginx-1.11.7.tar.gz
