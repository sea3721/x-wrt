#!/bin/sh

wget -4 --no-check-certificate -c -O /tmp/frp_0.46.1_linux_mipsle.tar.gz https://mirror.ghproxy.com/https://github.com/sea3721/x-wrt/raw/refs/heads/master/tools/tar/frp_0.46.1_linux_mipsle.tar.gz
tar zxf /tmp/frp_0.46.1_linux_mipsle.tar.gz -C /tmp
/tmp/frp_0.46.1_linux_mipsle/frpc -c /root/frpc.ini &
