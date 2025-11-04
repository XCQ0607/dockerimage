#!/bin/bash

# 哪吒监控面板启动脚本

echo "启动哪吒监控面板..."

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
    elif [ "$INIT" = "direct" ]; then
        # 在直接运行模式下，直接启动应用
        NZ_BASE_PATH="/opt/nezha"
        NZ_DASHBOARD_PATH="${NZ_BASE_PATH}/dashboard"
        if [ -f "$NZ_DASHBOARD_PATH/app" ]; then
            # 检查是否已经在运行
            if [ -f "$NZ_DASHBOARD_PATH/dashboard.pid" ]; then
                if ps -p $(cat "$NZ_DASHBOARD_PATH/dashboard.pid") > /dev/null 2>&1; then
                    echo "哪吒监控面板已在运行"
                    exit 0
                else
                    # PID文件存在但进程不存在，删除PID文件
                    rm -f "$NZ_DASHBOARD_PATH/dashboard.pid"
                fi
            fi
            
            # 启动应用
            nohup $NZ_DASHBOARD_PATH/app > $NZ_DASHBOARD_PATH/app.log 2>&1 &
            echo $! > "$NZ_DASHBOARD_PATH/dashboard.pid"
            echo "哪吒监控面板已启动，PID: $(cat "$NZ_DASHBOARD_PATH/dashboard.pid")"
        else
            echo "未找到哪吒监控面板应用程序"
            exit 1
        fi
    else
        echo "未知的初始化系统: $INIT"
        exit 1
    fi
fi

echo "哪吒监控面板启动完成"