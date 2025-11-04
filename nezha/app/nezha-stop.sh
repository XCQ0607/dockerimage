#!/bin/bash

# 哪吒监控面板停止脚本

echo "停止哪吒监控面板..."

# 检查系统初始化类型
# 在容器环境中，我们显式设置INIT为systemd
INIT="systemd"

# 检查是否在容器环境中
if [ -f /.dockerenv ] || grep -q docker /proc/1/cgroup; then
    echo "检测到容器环境，使用直接运行模式"
    INIT="direct"
fi

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
        echo "使用 docker-compose 停止哪吒监控面板..."
        cd /opt/nezha/dashboard
        docker-compose down
    elif docker compose version >/dev/null 2>&1; then
        echo "使用 docker compose 停止哪吒监控面板..."
        cd /opt/nezha/dashboard
        docker compose down
    else
        echo "未找到 docker-compose"
    fi
else
    # 独立安装模式
    echo "使用独立安装模式停止哪吒监控面板..."
    if [ "$INIT" = "systemd" ]; then
        $(sudo) systemctl stop nezha-dashboard
    elif [ "$INIT" = "openrc" ]; then
        $(sudo) rc-service nezha-dashboard stop
    elif [ "$INIT" = "direct" ]; then
        # 在直接运行模式下，尝试杀死现有的进程
        NZ_BASE_PATH="/opt/nezha"
        NZ_DASHBOARD_PATH="${NZ_BASE_PATH}/dashboard"
        if [ -f "$NZ_DASHBOARD_PATH/dashboard.pid" ]; then
            kill $(cat "$NZ_DASHBOARD_PATH/dashboard.pid") 2>/dev/null || true
            rm -f "$NZ_DASHBOARD_PATH/dashboard.pid"
            echo "哪吒监控面板已停止"
        else
            echo "未找到哪吒监控面板进程"
        fi
    else
        echo "未知的初始化系统: $INIT"
    fi
fi

echo "哪吒监控面板停止完成"