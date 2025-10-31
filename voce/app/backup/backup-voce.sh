#!/bin/bash

# VoceChat R2备份脚本

echo "Starting VoceChat backup to R2..."

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

# 检查数据目录是否存在
if [ ! -d "/home/vocechat-server/data" ]; then
    echo "Warning: VoceChat data directory not found. Skipping backup."
    exit 0
fi

# 检查数据目录是否为空
if [ -z "$(ls -A /home/vocechat-server/data)" ]; then
    echo "Warning: VoceChat data directory is empty. Skipping backup."
    exit 0
fi

# 创建备份文件名（带时间戳）
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="vocechat_backup_$TIMESTAMP.zip"

# 停止VoceChat服务
echo "Stopping VoceChat service..."
pkill -f "vocechat-server" || true
sleep 5  # 等待进程完全停止

# 创建备份
echo "Creating backup archive..."
cd /home/vocechat-server
if zip -r /tmp/$BACKUP_FILE data; then
    echo "Backup archive created successfully."
else
    echo "Error: Failed to create backup archive."
    # 重新启动服务
    /app/voce/start-voce.sh
    exit 1
fi

# 上传到R2
echo "Uploading backup to R2..."
if s3cmd -c /home/user/s3cfg put /tmp/$BACKUP_FILE s3://$R2_BUCKET_NAME/; then
    echo "Backup uploaded to R2 successfully."
else
    echo "Error: Failed to upload backup to R2."
    # 清理临时文件
    rm -f /tmp/$BACKUP_FILE
    # 重新启动服务
    /app/voce/start-voce.sh
    exit 1
fi

# 清理临时文件
rm -f /tmp/$BACKUP_FILE

# 删除旧备份（保留最近5个）
echo "Cleaning up old backups..."
s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep vocechat_backup_ | sort -r | awk '{print $4}' | tail -n +6 | while read -r OLD_BACKUP; do
    if [ -n "$OLD_BACKUP" ]; then
        s3cmd -c /home/user/s3cfg del "$OLD_BACKUP"
        echo "Deleted old backup: $OLD_BACKUP"
    fi
done

# 重新启动VoceChat服务
echo "Restarting VoceChat service..."
/app/voce/start-voce.sh

echo "Backup completed successfully."

# 确保脚本正确退出
exit 0