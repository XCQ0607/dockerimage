#!/bin/bash

# VoceChat R2恢复脚本

echo "Checking for latest VoceChat backup in R2..."

# 检查必要的环境变量
if [ -z "$R2_ACCESS_KEY_ID" ] || [ -z "$R2_SECRET_ACCESS_KEY" ] || [ -z "$R2_ENDPOINT" ] || [ -z "$R2_BUCKET_NAME" ]; then
    echo "Error: Missing required R2 environment variables"
    exit 1
fi

# 设置s3cmd配置
mkdir -p /home/user
cat > /home/user/s3cfg << EOF
[default]
access_key = $R2_ACCESS_KEY_ID
secret_key = $R2_SECRET_ACCESS_KEY
bucket_location = auto
host_base = $R2_ENDPOINT
host_bucket = $R2_BUCKET_NAME.$R2_ENDPOINT
EOF

# 查找最新的备份文件
LATEST_BACKUP=$(s3cmd --config-file=/home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep vocechat_backup_ | sort -r | head -n 1 | awk '{print $4}')

if [ -z "$LATEST_BACKUP" ]; then
    echo "No backup found in R2. Starting fresh VoceChat instance."
    exit 0
fi

echo "Found latest backup: $LATEST_BACKUP"

# 停止现有VoceChat服务
echo "Stopping existing VoceChat service..."
pkill -f "vocechat-server" || true
sleep 5  # 等待进程完全停止

# 下载最新的备份
echo "Downloading latest backup..."
if s3cmd --config-file=/home/user/s3cfg get "$LATEST_BACKUP" /tmp/latest_backup.zip; then
    echo "Backup downloaded successfully."
else
    echo "Error: Failed to download backup from R2."
    # 启动服务
    cd /home/vocechat-server
    ./vocechat-server &
    exit 1
fi

# 解压备份
echo "Extracting backup..."
mkdir -p /home/vocechat-server
cd /home/vocechat-server
rm -rf data  # 删除现有数据
if unzip /tmp/latest_backup.zip; then
    echo "Backup extracted successfully."
else
    echo "Error: Failed to extract backup."
    # 清理临时文件
    rm -f /tmp/latest_backup.zip
    # 启动服务
    cd /home/vocechat-server
    ./vocechat-server &
    exit 1
fi

# 清理临时文件
rm -f /tmp/latest_backup.zip

# 启动VoceChat服务
echo "Starting VoceChat service..."
cd /home/vocechat-server
./vocechat-server &

echo "Restore completed. VoceChat data restored from $LATEST_BACKUP"