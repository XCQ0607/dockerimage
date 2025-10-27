#!/bin/bash
# 初始化 supervisord
mkdir -p /var/log/supervisor
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
