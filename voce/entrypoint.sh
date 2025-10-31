#!/usr/bin/env sh

# 设置HOME环境变量
export HOME=/home/user

sed -i "s/UUID/$UUID/g" /app/xy/config.json
sed -i "s/DOMAIN/$DOMAIN/g" /app/keepalive.sh

# 恢复VoceChat数据（如果存在备份）
echo "Checking for VoceChat backup restore..."
/app/backup/restore-voce.sh

# cp /etc/resolv.conf /etc/resolv.conf.bak
# echo "nameserver 1.1.1.1" > /etc/resolv.conf
# echo "nameserver 8.8.8.8" >> /etc/resolv.conf

# (crontab -l 2>/dev/null; echo "*/5 * * * * /app/keepalive.sh") | crontab -

# 启动supervisord来管理其他服务
exec supervisord -c /app/supervisor/supervisord.conf