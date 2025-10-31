#!/bin/bash

# VoceChat服务健康检查脚本

echo "Checking VoceChat service health..."

# 检查端口3000是否正在监听
if ! nc -z localhost 3000; then
    echo "VoceChat service is not listening on port 3000. Attempting to restart..."
    
    # 检查是否有运行中的VoceChat进程，如果有则终止
    if pgrep -f "vocechat-server" > /dev/null; then
        echo "Terminating existing VoceChat process..."
        pkill -f "vocechat-server"
        sleep 3
    fi
    
    # 启动VoceChat服务
    echo "Starting VoceChat service..."
    /app/voce/start-voce.sh
    
    # 等待几秒钟让服务启动
    sleep 5
    
    # 再次检查端口是否正在监听
    if nc -z localhost 3000; then
        echo "VoceChat service restarted successfully and is now listening on port 3000."
    else
        echo "Failed to restart VoceChat service. Please check the logs."
    fi
else
    echo "VoceChat service is healthy and listening on port 3000."
fi