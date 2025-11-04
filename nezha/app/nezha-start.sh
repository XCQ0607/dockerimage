#!/bin/bash

# 哪吒监控面板启动脚本

echo "启动哪吒监控面板..."

# 检查系统初始化类型
if [ -z "$INIT" ]; then
    if command -v systemctl >/dev/null 2>&1; then
        INIT="systemd"
    elif [ -f "/sbin/openrc" ] || [ -f "/etc/init.d/functions" ]; then
        INIT="openrc"
    else
        echo "无法确定系统初始化类型"
        exit 1
    fi
fi

# 检查是否使用Docker安装
if [ "$NEZHA_DOCKER_INSTALL" = "true" ]; then
    if command -v docker-compose >/dev/null 2>&1; then
        echo "使用 docker-compose 启动哪吒监控面板..."
        cd /opt/nezha/dashboard
        docker-compose up -d
    elif docker compose version >/dev/null 2>&1; then
        echo "使用 docker compose 启动哪吒监控面板..."
        cd /opt/nezha/dashboard
        docker compose up -d
    else
        echo "未找到 docker-compose，无法启动服务"
        exit 1
    fi
else
    # 独立安装模式
    echo "使用独立安装模式启动哪吒监控面板..."
    if [ "$INIT" = "systemd" ]; then
        sudo systemctl start nezha-dashboard
    elif [ "$INIT" = "openrc" ]; then
        sudo rc-service nezha-dashboard start
    else
        echo "未知的初始化系统: $INIT"
        exit 1
    fi
fi

echo "哪吒监控面板启动完成"