#!/bin/bash

# 通用服务健康检查脚本

# 检查是否启用健康检查功能
if [ "$hc_on" != "true" ] && [ "$hc_on" != "1" ]; then
    echo "Health check feature is disabled. Exiting."
    exit 0
fi

# 设置默认值
: ${HC_PORT:=7860}
: ${HC_START_SCRIPT:=""}
: ${HC_SERVICE_NAME:=service}

echo "Checking ${HC_SERVICE_NAME} health..."

# 检查端口是否正在监听
if ! nc -z localhost $HC_PORT; then
    echo "${HC_SERVICE_NAME} is not listening on port $HC_PORT. Attempting to restart..."
    
    # 检查是否有运行中的服务进程，如果有则终止
    if pgrep -f "$HC_SERVICE_NAME" > /dev/null; then
        echo "Terminating existing ${HC_SERVICE_NAME} process..."
        pkill -f "$HC_SERVICE_NAME"
        sleep 3
    fi
    
    # 启动服务
    if [ -n "$HC_START_SCRIPT" ] && [ -f "$HC_START_SCRIPT" ]; then
        echo "Starting ${HC_SERVICE_NAME} with script: $HC_START_SCRIPT"
        eval "$HC_START_SCRIPT"
    else
        echo "No start script specified for ${HC_SERVICE_NAME}"
    fi
    
    # 等待几秒钟让服务启动
    sleep 5
    
    # 再次检查端口是否正在监听
    if nc -z localhost $HC_PORT; then
        echo "${HC_SERVICE_NAME} restarted successfully and is now listening on port $HC_PORT."
    else
        echo "Failed to restart ${HC_SERVICE_NAME}. Please check the logs."
    fi
else
    echo "${HC_SERVICE_NAME} is healthy and listening on port $HC_PORT."
fi