FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:max-c-lv/shadowsocks-libev && \
  apt-get update && \
  apt-get install -y iputils-ping shadowsocks-libev iproute2 && \
  rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
