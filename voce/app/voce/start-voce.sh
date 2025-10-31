#!/bin/bash

# VoceChat启动脚本

# 检查VoceChat二进制文件是否存在
if [ ! -f "/home/vocechat-server/vocechat-server" ]; then
    echo "Error: VoceChat binary not found. Please make sure VoceChat is installed."
    exit 1
fi

# 创建必要的目录
mkdir -p /home/vocechat-server/config /home/vocechat-server/data

# 设置权限（使用root用户）
chown -R root:root /home/vocechat-server

# 检查是否已经有运行中的VoceChat进程
if pgrep -f "vocechat-server" > /dev/null; then
    echo "VoceChat service is already running."
    exit 0
fi

echo "Starting VoceChat service..."
# 直接运行VoceChat服务
cd /home/vocechat-server
./vocechat-server &

echo "VoceChat service started on port $VOCE_PORT."