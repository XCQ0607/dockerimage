#!/bin/bash

# 哪吒监控面板启动脚本

echo "启动哪吒监控面板..."

# 检查系统初始化类型
# 在容器环境中，我们显式设置INIT为openrc
INIT="openrc"

# 定义sudo函数以处理容器环境中没有sudo的情况
sudo() {
    if command -v sudo > /dev/null 2>&1; then
        command sudo "$@"
    else
        "$@"
    fi
}

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
        $(sudo) systemctl start nezha-dashboard
    elif [ "$INIT" = "openrc" ]; then
        $(sudo) rc-service nezha-dashboard start
    else
        echo "未知的初始化系统: $INIT"
        exit 1
    fi
fi

echo "哪吒监控面板启动完成"