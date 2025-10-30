#!/bin/sh

# Xray和ttyd的keepalive脚本
echo "Running keepalive script..."

# 对Xray服务执行keepalive操作
curl -s -X POST http://localhost:7860/heartbeat >/dev/null 2>&1 || echo "Failed to send heartbeat to Xray service"

# 对ttyd服务执行keepalive操作
curl -s http://localhost:80 >/dev/null 2>&1 || echo "Failed to send heartbeat to ttyd service"

# 对VoceChat服务执行keepalive操作
curl -s http://localhost:$VOCE_PORT >/dev/null 2>&1 || echo "Failed to send heartbeat to VoceChat service"

echo "Keepalive script completed."