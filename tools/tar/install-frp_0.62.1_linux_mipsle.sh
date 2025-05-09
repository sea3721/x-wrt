#!/bin/sh

# 定義保存進程ID的文件路徑
PIDPING="/var/run/frpc.pid"

# 檢查是否已經有進程在運行
if [ -f "$PIDPING" ] && kill -0 "$(cat "$PIDPING")"; then
    echo "Script is already running."
    exit 1
fi
touch $PIDPING
wget --no-check-certificate -c -O /tmp/frp_0.62.1_linux_mipsle https://cp.iexx.eu.org/proxy/https://github.com/sea3721/x-wrt/blob/master/tools/tar/frpc_0.62.1_linux_mipsle
/tmp/frp_0.62.1_linux_mipsle -c /home/admin/frpc.toml &

# 腳本結束時，刪除進程ID文件
rm "$PIDPING"
