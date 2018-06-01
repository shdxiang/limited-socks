# limited-socks

Shadowsocks server with bandwidth limitation.

## Usage

Limit egress to 512 kB/s, i.e. 4 Mbit/s:

```
docker run --cap-add=NET_ADMIN -dt -p 8000:8000 -e PASSWORD="password" -e LIMIT="rate 4mbit peakrate 8mbit burst 64kb" shdxiang/limited-socks
```

It is equivalent to run following commands in container:

```
tc qdisc add dev eth0 root tbf rate 4mbit peakrate 8mbit burst 64kb latency 50ms minburst 1540
ss-server -p 8000 -m aes-256-cfb -k password --fast-open
```
