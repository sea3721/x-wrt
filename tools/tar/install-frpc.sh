#!/bin/sh

# 定義保存進程ID的文件路徑
PIDPING="/var/run/frpc.pid"

# 檢查是否已經有進程在運行
if [ -f "$PIDPING" ] && kill -0 "$(cat "$PIDPING")"; then
    echo "Script is already running."
    exit 1
fi
touch $PIDPING
wget -4 --no-check-certificate -c -O /tmp/frp_0.46.1_linux_mipsle.tar.gz https://cp.iexx.eu.org/proxy/https://github.com/sea3721/x-wrt/raw/refs/heads/master/tools/tar/frp_0.46.1_linux_mipsle.tar.gz
tar zxf /tmp/frp_0.46.1_linux_mipsle.tar.gz -C /tmp
rm /tmp/frp_0.46.1_linux_mipsle.tar.gz
/tmp/frp_0.46.1_linux_mipsle/frpc -c /tmp/frp_0.46.1_linux_mipsle/frpc.ini &


# 腳本結束時，刪除進程ID文件
rm "$PIDPING"
