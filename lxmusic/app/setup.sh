#!/usr/bin/env sh

# 初始化脚本，在容器启动时运行一次

echo "Running setup script..."

# 替换Xray配置中的UUID
sed -i "s/UUID/$UUID/g" /app/xy/config.json

# 初始化cron文件（只保留注释，实际任务由setup-cron.sh添加）
echo "# Generated crontab file" > /app/cron/my-crontab

# 设置所有计划任务
if [ -f "/app/setup-cron.sh" ]; then
    /app/setup-cron.sh
fi

echo "Setup completed."