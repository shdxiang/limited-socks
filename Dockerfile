FROM ubuntu:18.04

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y shadowsocks-libev trickle && \
  rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
