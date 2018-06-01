#!/bin/bash

tc qdisc add dev eth0 root tbf ${LIMIT} latency 50ms minburst 1540
ss-server -p 8000 -m aes-256-cfb -k ${PASSWORD} --fast-open
