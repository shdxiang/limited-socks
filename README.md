# limited-socks

Shadowsocks server with bandwidth limitation.

## Usage

Example:

- Download: 2 Mb = 256 KB = 2097152

- Upload: 512 Kb = 64 KB = 524288

```
docker run -dt -p 8000:8000 -e SHAPER_ARGS="eth0 2097152 524288" -e SS_SERVER_ARGS="-p 8000 -m aes-256-cfb -k password --fast-open" shdxiang/limited-socks
```

It is equivalent to run following commands in container system:

```
wondershaper eth0 2097152 524288
ss-server -p 8000 -m aes-256-cfb -k password --fast-open
```
