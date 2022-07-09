#!/bin/bash

/etc/init.d/mysql start

echo '[-] Waiting mysql start...'
while true
do
    nc -z mysql5.6 3306 && break
    sleep 1
done

# 初始化 openrasp、dvwa、mutillidae 所需的数据
if [ -f /root/db.sql ]; then
    mysql -uroot < /root/db.sql
    rm -rf /root/db.sql
fi

# 启动 php 服务器，从而启动 openrasp、dvwa、mutillidae
/usr/sbin/apachectl start
while true
do
    sleep 1
    curl localhost:18662 &>/dev/null && break
done

echo '[-] apache start success!'
/bin/bash
