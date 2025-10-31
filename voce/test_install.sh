#!/bin/bash

# 测试VoceChat安装脚本

echo "Testing VoceChat installation..."

# 检查VoceChat二进制文件是否存在
if [ -f "/home/vocechat-server/vocechat-server" ]; then
    echo "✓ VoceChat binary found"
else
    echo "✗ VoceChat binary not found"
    exit 1
fi

# 检查版本信息
echo "Checking VoceChat version:"
/home/vocechat-server/vocechat-server --version

echo "Test completed successfully!"