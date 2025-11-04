#!/bin/bash

# 哪吒监控面板自动安装脚本

# 设置默认值
: ${NEZHA_SITE_TITLE:="X-Nezha"}
: ${NEZHA_PORT:=7860}
: ${NEZHA_AGENT_HOSTPORT:=""}
: ${NEZHA_TLS:="false"}
: ${NEZHA_LANGUAGE:="zh_CN"}
: ${NEZHA_USERNAME:="admin"}
: ${NEZHA_PASSWORD:="admin"}
: ${NEZHA_DOCKER_INSTALL:="false"}

echo "开始自动安装哪吒监控面板..."

# 创建安装目录
mkdir -p /opt/nezha/dashboard

# 下载安装脚本
echo "下载安装脚本..."
curl -L https://raw.githubusercontent.com/nezhahq/scripts/refs/heads/main/install.sh -o /tmp/nezha.sh
chmod +x /tmp/nezha.sh

# 设置环境变量用于自动化安装
export AUTO_INSTALL=true
export NEZHA_SITE_TITLE
export NEZHA_PORT
export NEZHA_AGENT_HOSTPORT
export NEZHA_TLS
export NEZHA_LANGUAGE
# 设置为独立安装模式
export NEZHA_DOCKER_INSTALL

# 检查系统初始化类型
if command -v systemctl >/dev/null 2>&1; then
    export INIT="systemd"
elif [ -f "/sbin/openrc" ] || [ -f "/etc/init.d/functions" ]; then
    export INIT="openrc"
else
    echo "无法确定系统初始化类型"
    exit 1
fi

# 执行安装
echo "执行安装..."
cd /tmp
# 使用独立安装方式
./nezha.sh install

# 检查安装是否成功
if [ -f "/opt/nezha/dashboard/app" ]; then
    echo "哪吒监控面板安装成功!"
    
    # 设置哪吒监控面板数据目录权限
    mkdir -p /opt/nezha/dashboard/data
    chown -R 1000:0 /opt/nezha/dashboard/data
    chmod -R 777 /opt/nezha/dashboard/data
    
    echo "访问地址: http://localhost:$NEZHA_PORT"
    echo "默认用户名: $NEZHA_USERNAME"
    echo "默认密码: $NEZHA_PASSWORD"
    echo "请尽快登录并修改默认密码!"
    
    # 通知supervisor哪吒监控面板安装完成
    echo "通知supervisor哪吒监控面板安装完成..."
    supervisorctl start nezha-post-install
else
    echo "哪吒监控面板安装失败!"
    exit 1
fi