#!/bin/bash

# LX音乐同步服务器备份脚本

# 检查是否启用备份功能
if [ "$backup_on" != "true" ] && [ "$backup_on" != "1" ]; then
    echo "Backup feature is disabled. Exiting."
    exit 0
fi

# 设置默认值
: ${LX_BACKUP_NAME:="lxmusic"}
: ${LX_DATA_PATH:=/app/lx/data}
: ${BACKUP_DEST_DIR:=/tmp}
: ${KEEP_BACKUPS:=5}

echo "Starting ${LX_BACKUP_NAME} backup..."

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
if [ ! -d "$LX_DATA_PATH" ]; then
    echo "Warning: LX data directory $LX_DATA_PATH not found. Skipping backup."
    exit 0
fi

# 检查数据目录是否为空
if [ -z "$(ls -A $LX_DATA_PATH)" ]; then
    echo "Warning: LX data directory $LX_DATA_PATH is empty. Skipping backup."
    exit 0
fi

# 创建备份文件名（带时间戳）
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${LX_BACKUP_NAME}_$TIMESTAMP.zip"

# 创建备份
echo "Creating backup archive..."
cd $(dirname "$LX_DATA_PATH")
if zip -r "$BACKUP_DEST_DIR/$BACKUP_FILE" $(basename "$LX_DATA_PATH"); then
    echo "Backup archive created successfully."
else
    echo "Error: Failed to create backup archive."
    exit 1
fi

# 上传到R2
echo "Uploading backup to R2..."
if s3cmd -c /home/user/s3cfg put "$BACKUP_DEST_DIR/$BACKUP_FILE" s3://$R2_BUCKET_NAME/; then
    echo "Backup uploaded to R2 successfully."
else
    echo "Error: Failed to upload backup to R2."
    # 清理临时文件
    rm -f "$BACKUP_DEST_DIR/$BACKUP_FILE"
    exit 1
fi

# 清理临时文件
rm -f "$BACKUP_DEST_DIR/$BACKUP_FILE"

# 删除旧备份（保留指定数量）
echo "Cleaning up old backups, keeping last $KEEP_BACKUPS..."
s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep "${LX_BACKUP_NAME}_" | sort -r | awk '{print $4}' | tail -n +$((KEEP_BACKUPS + 1)) | while read -r OLD_BACKUP; do
    if [ -n "$OLD_BACKUP" ]; then
        s3cmd -c /home/user/s3cfg del "$OLD_BACKUP"
        echo "Deleted old backup: $OLD_BACKUP"
    fi
done

echo "LX backup completed successfully."

# 确保脚本正确退出
exit 0