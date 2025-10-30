#!/bin/bash

# VoceChat启动脚本

echo "Checking for VoceChat image..."
docker pull privoce/vocechat-server:latest

# 创建必要的目录
mkdir -p /home/vocechat-server/config /home/vocechat-server/data

# 设置权限（使用root用户）
chown -R root:root /home/vocechat-server

# 检查是否已经有运行中的VoceChat容器
if docker ps -q -f name=vocechat-server | grep -q .; then
    echo "VoceChat service is already running."
    exit 0
fi

echo "Starting VoceChat service..."
# 使用docker运行VoceChat服务
docker run -d --restart=always \
  --name vocechat-server \
  -p $VOCE_PORT:3000 \
  -v /home/vocechat-server/data:/home/vocechat-server/data \
  privoce/vocechat-server:latest

echo "VoceChat service started on port $VOCE_PORT."