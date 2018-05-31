# limited-socks

Shadowsocks server with bandwidth limitation.

## Usage

```
docker run -dt -p 8000:8000 -e TRICKLE_ARGS="-d 50" -e SS_SERVER_ARGS="-p 8000 -m aes-256-cfb -k password --fast-open"
```

equivalent to:

```
trickle -d 50 ss-server -p 8000 -m aes-256-cfb -k password --fast-open
```
