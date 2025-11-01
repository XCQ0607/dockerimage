#!/bin/bash

# LX音乐同步服务器停止脚本

echo "Stopping LX Music Sync Server..."

# 查找并终止LX音乐同步服务器进程
if pgrep -f "node ./index.js" > /dev/null; then
    echo "Found LX Music Sync Server process, terminating..."
    pkill -f "node ./index.js"
    sleep 3
    
    # 检查是否还有进程在运行
    if pgrep -f "node ./index.js" > /dev/null; then
        echo "Force killing remaining LX Music Sync Server processes..."
        pkill -9 -f "node ./index.js"
    fi
else
    echo "No LX Music Sync Server process found."
fi

echo "LX Music Sync Server stopped."