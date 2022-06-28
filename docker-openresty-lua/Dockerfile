FROM centos:latest

RUN yum install -y pcre-devel openssl-devel gcc curl wget perl make \
    cd ~ \
    wget https://openresty.org/download/openresty-1.15.8.1.tar.gz \
    tar -xzvf openresty-1.15.8.1.tar.gz \
    cd openresty-1.15.8.1 \
    ./configure \
    gmake \
    gmake install
RUN PATH=$PATH:/usr/local/openresty/nginx/sbin:/usr/local/openresty/bin/
RUN mkdir -p /lua
RUN mkdir -p /usr/local/openresty/nginx/conf/conf.d
RUN nginx &

EXPOSE 80 443