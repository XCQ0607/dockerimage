#!/bin/bash

# LX音乐同步服务器恢复脚本

# 检查是否启用备份功能
if [ "$backup_on" != "true" ] && [ "$backup_on" != "1" ]; then
    echo "Backup feature is disabled. Exiting."
    exit 0
fi

# 设置默认值
: ${LX_BACKUP_NAME:="lxmusic"}
: ${LX_DATA_PATH:=/app/lx/data}
: ${BACKUP_DEST_DIR:=/tmp}

echo "Checking for latest ${LX_BACKUP_NAME} backup in R2..."

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
LATEST_BACKUP=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep "${LX_BACKUP_NAME}_" | sort -r | head -n 1 | awk '{print $4}')

if [ -z "$LATEST_BACKUP" ]; then
    echo "No backup found in R2. Starting fresh instance."
    exit 0
fi

echo "Found latest backup: $LATEST_BACKUP"

# 下载最新的备份
echo "Downloading latest backup..."
if s3cmd -c /home/user/s3cfg get "$LATEST_BACKUP" "$BACKUP_DEST_DIR/latest_lx_backup.zip"; then
    echo "Backup downloaded successfully."
else
    echo "Error: Failed to download backup from R2."
    exit 1
fi

# 解压备份
echo "Extracting backup..."
mkdir -p "$(dirname "$LX_DATA_PATH")"
cd "$BACKUP_DEST_DIR"
rm -rf "extracted_lx_backup"  # 删除之前的解压目录
if unzip "$BACKUP_DEST_DIR/latest_lx_backup.zip" -d "extracted_lx_backup"; then
    echo "Backup extracted successfully."
    
    # 删除现有数据
    rm -rf "$LX_DATA_PATH"
    
    # 将备份数据移动到目标目录
    if [ -d "$BACKUP_DEST_DIR/extracted_lx_backup/$(basename "$LX_DATA_PATH")" ]; then
        echo "Moving data to $LX_DATA_PATH"
        mv "$BACKUP_DEST_DIR/extracted_lx_backup/$(basename "$LX_DATA_PATH")" "$LX_DATA_PATH"
    else
        echo "Warning: Data directory not found in backup. Moving entire backup content."
        mkdir -p "$LX_DATA_PATH"
        cp -r "$BACKUP_DEST_DIR/extracted_lx_backup/"* "$LX_DATA_PATH/"
    fi
else
    echo "Error: Failed to extract backup."
    # 清理临时文件
    rm -f "$BACKUP_DEST_DIR/latest_lx_backup.zip"
    rm -rf "$BACKUP_DEST_DIR/extracted_lx_backup"
    exit 1
fi

# 清理临时文件
rm -f "$BACKUP_DEST_DIR/latest_lx_backup.zip"
rm -rf "$BACKUP_DEST_DIR/extracted_lx_backup"

echo "LX restore completed. Data restored from $LATEST_BACKUP"