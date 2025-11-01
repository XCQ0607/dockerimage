#!/bin/bash

# LX音乐同步服务器启动脚本

# 设置默认值
: ${LX_PORT:=1234}
: ${LX_BIND_IP:=0.0.0.0}
: ${LX_DATA_PATH:=/app/lx/data}
: ${LX_LOG_PATH:=/app/lx/logs}
: ${LX_CONFIG_PATH:=/app/lx/data/config.js}

echo "Starting LX Music Sync Server..."
echo "Port: $LX_PORT"
echo "Bind IP: $LX_BIND_IP"
echo "Data Path: $LX_DATA_PATH"
echo "Log Path: $LX_LOG_PATH"
echo "Config Path: $LX_CONFIG_PATH"

# 创建必要的目录
mkdir -p "$LX_DATA_PATH" "$LX_LOG_PATH"

# 检查配置文件是否存在，如果不存在则从默认位置复制
if [ ! -f "$LX_CONFIG_PATH" ]; then
    echo "Config file not found at $LX_CONFIG_PATH, copying default config..."
    if [ -f "/app/lx/config.js" ]; then
        cp /app/lx/config.js "$LX_CONFIG_PATH"
    else
        echo "Warning: Default config file not found at /app/lx/config.js"
    fi
fi

# 设置目录权限
chown -R 1000:0 "$LX_DATA_PATH" "$LX_LOG_PATH"
chmod -R 777 "$LX_DATA_PATH" "$LX_LOG_PATH"

# 启动LX音乐同步服务器
cd /app/lx
PORT=$LX_PORT BIND_IP=$LX_BIND_IP DATA_PATH=$LX_DATA_PATH LOG_PATH=$LX_LOG_PATH CONFIG_PATH=$LX_CONFIG_PATH node ./index.js