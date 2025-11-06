#!/bin/bash

# 通用R2备份脚本

# 设置脚本在任何命令失败时退出，并启用管道失败检查
set -eo pipefail

# 设置超时时间（秒）
TIMEOUT=300  # 5分钟超时

# 检查是否启用备份功能
if [ "$backup_on" != "true" ] && [ "$backup_on" != "1" ]; then
    echo "Backup feature is disabled. Exiting."
    exit 0
fi

# 设置默认值
: ${BACKUP_NAME:="backup"}
: ${BACKUP_SOURCE_DIR:="/app/data"}
: ${BACKUP_DEST_DIR:="/tmp"}
: ${KEEP_BACKUPS:=5}
: ${BACKUP_START_SCRIPT:=""}
: ${BACKUP_STOP_SCRIPT:=""}

echo "Starting ${BACKUP_NAME} backup to R2..."

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
if [ ! -d "$BACKUP_SOURCE_DIR" ]; then
    echo "Warning: Data directory $BACKUP_SOURCE_DIR not found. Skipping backup."
    exit 0
fi

# 检查数据目录是否为空
if [ -z "$(ls -A $BACKUP_SOURCE_DIR)" ]; then
    echo "Warning: Data directory $BACKUP_SOURCE_DIR is empty. Skipping backup."
    exit 0
fi

# 创建备份文件名（带时间戳）
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BACKUP_NAME}_backup_$TIMESTAMP.zip"

# 停止服务（如果指定了停止脚本）
if [ -n "$BACKUP_STOP_SCRIPT" ] && [ -f "$BACKUP_STOP_SCRIPT" ]; then
    echo "Stopping service with script: $BACKUP_STOP_SCRIPT"
    timeout $TIMEOUT bash -c "$BACKUP_STOP_SCRIPT" || true
    sleep 5  # 等待进程完全停止
fi

# 创建备份
echo "Creating backup archive..."
cd $(dirname "$BACKUP_SOURCE_DIR")
if timeout $TIMEOUT zip -r "$BACKUP_DEST_DIR/$BACKUP_FILE" $(basename "$BACKUP_SOURCE_DIR"); then
    echo "Backup archive created successfully."
else
    echo "Error: Failed to create backup archive within timeout period."
    # 重新启动服务（如果指定了启动脚本）
    if [ -n "$BACKUP_START_SCRIPT" ] && [ -f "$BACKUP_START_SCRIPT" ]; then
        echo "Restarting service with script: $BACKUP_START_SCRIPT"
        timeout $TIMEOUT bash -c "$BACKUP_START_SCRIPT" || true
    fi
    exit 1
fi

# 上传到R2
echo "Uploading backup to R2..."
if timeout $TIMEOUT s3cmd -c /home/user/s3cfg put "$BACKUP_DEST_DIR/$BACKUP_FILE" s3://$R2_BUCKET_NAME/; then
    echo "Backup uploaded to R2 successfully."
else
    echo "Error: Failed to upload backup to R2 within timeout period."
    # 清理临时文件
    rm -f "$BACKUP_DEST_DIR/$BACKUP_FILE"
    # 重新启动服务（如果指定了启动脚本）
    if [ -n "$BACKUP_START_SCRIPT" ] && [ -f "$BACKUP_START_SCRIPT" ]; then
        echo "Restarting service with script: $BACKUP_START_SCRIPT"
        timeout $TIMEOUT bash -c "$BACKUP_START_SCRIPT" || true
    fi
    exit 1
fi

# 清理临时文件
rm -f "$BACKUP_DEST_DIR/$BACKUP_FILE"

# 删除旧备份（保留指定数量）
echo "Cleaning up old backups, keeping last $KEEP_BACKUPS..."
timeout $TIMEOUT bash -c "s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep \"${BACKUP_NAME}_backup_\" | sort -r | awk '{print \$4}' | tail -n +$((KEEP_BACKUPS + 1))" | while read -r OLD_BACKUP; do
    if [ -n "$OLD_BACKUP" ]; then
        timeout $TIMEOUT s3cmd -c /home/user/s3cfg del "$OLD_BACKUP"
        echo "Deleted old backup: $OLD_BACKUP"
    fi
done

# 重新启动服务（如果指定了启动脚本）
if [ -n "$BACKUP_START_SCRIPT" ] && [ -f "$BACKUP_START_SCRIPT" ]; then
    echo "Restarting service with script: $BACKUP_START_SCRIPT"
    timeout $TIMEOUT bash -c "$BACKUP_START_SCRIPT" || true
fi

echo "Backup completed successfully."

# 确保脚本正确退出
exit 0