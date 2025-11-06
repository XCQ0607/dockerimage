#!/usr/bin/env sh

# 初始化脚本，在容器启动时运行一次

echo "Running setup script..."

# 替换Xray配置中的UUID
sed -i "s/UUID/$UUID/g" /app/xy/config.json

sed -i "s/UUID/$UUID/g" /app/hysteria/config.yaml

# 初始化cron文件（只保留注释，实际任务由setup-cron.sh添加）
echo "# Generated crontab file" > /app/cron/my-crontab

# 设置所有计划任务
if [ -f "/app/setup-cron.sh" ]; then
    /app/setup-cron.sh
fi

echo "Setup completed."

# 设置Nginx配置
echo "Setting up Nginx configuration..."

# Create necessary directories
mkdir -p /usr/local/bin/nginx/conf.d/stream

# Copy configuration files
cp /app/nginx/nginx.conf /usr/local/bin/nginx/conf/nginx.conf
cp -r /app/nginx/conf.d/* /usr/local/bin/nginx/conf.d/

# Set proper permissions
chown -R root:root /usr/local/bin/nginx 2>/dev/null || echo "Could not change ownership of /usr/local/bin/nginx"
chmod -R 755 /usr/local/bin/nginx 2>/dev/null || echo "Could not change permissions of /usr/local/bin/nginx"

echo "Nginx configuration setup complete."