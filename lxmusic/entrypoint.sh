#!/usr/bin/env sh

sed -i "s/UUID/$UUID/g" /app/xy/config.json
# 不再需要替换DOMAIN变量，因为keepalive.sh现在支持多个域名

# 恢复数据（如果存在备份）
echo "Checking for backup restore..."
if [ -f "/app/backup/restore.sh" ]; then
    /app/backup/restore.sh
fi

# 初始化cron文件（只保留注释，实际任务由setup-cron.sh添加）
echo "# Generated crontab file" > /app/cron/my-crontab

# 设置所有计划任务
if [ -f "/app/setup-cron.sh" ]; then
    /app/setup-cron.sh
fi

# cp /etc/resolv.conf /etc/resolv.conf.bak
# echo "nameserver 1.1.1.1" > /etc/resolv.conf
# echo "nameserver 8.8.8.8" >> /etc/resolv.conf

# (crontab -l 2>/dev/null; echo "*/5 * * * * /app/keepalive.sh") | crontab -

exec "$@"