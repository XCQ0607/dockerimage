#!/bin/bash

# 通用R2恢复脚本

# 检查是否启用备份功能
if [ "$backup_on" != "true" ] && [ "$backup_on" != "1" ]; then
    echo "Backup feature is disabled. Exiting."
    exit 0
fi

# 设置默认值，RESTORE_系列变量默认使用对应的BACKUP_系列变量的值
: ${BACKUP_NAME:="backup"}
: ${BACKUP_SOURCE_DIR:="/app/data"}
: ${BACKUP_DEST_DIR:="/tmp"}
: ${BACKUP_START_SCRIPT:=""}
: ${BACKUP_STOP_SCRIPT:=""}

# RESTORE_系列变量默认使用对应的BACKUP_系列变量的值
: ${RESTORE_TARGET_DIR:="$BACKUP_SOURCE_DIR"}
: ${RESTORE_SOURCE_DIR:="data"}
: ${RESTORE_DEST_DIR:="$BACKUP_DEST_DIR"}
: ${RESTORE_START_SCRIPT:="$BACKUP_START_SCRIPT"}
: ${RESTORE_STOP_SCRIPT:="$BACKUP_STOP_SCRIPT"}

echo "Checking for latest ${BACKUP_NAME} backup in R2..."

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
LATEST_BACKUP=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep "${BACKUP_NAME}_backup_" | sort -r | head -n 1 | awk '{print $4}')

if [ -z "$LATEST_BACKUP" ]; then
    echo "No backup found in R2. Starting fresh instance."
    # 启动服务（如果指定了启动脚本）
    if [ -n "$RESTORE_START_SCRIPT" ] && [ -f "$RESTORE_START_SCRIPT" ]; then
        echo "Starting service with script: $RESTORE_START_SCRIPT"
        eval "$RESTORE_START_SCRIPT"
    fi
    exit 0
fi

echo "Found latest backup: $LATEST_BACKUP"

# 停止现有服务（如果指定了停止脚本）
if [ -n "$RESTORE_STOP_SCRIPT" ] && [ -f "$RESTORE_STOP_SCRIPT" ]; then
    echo "Stopping service with script: $RESTORE_STOP_SCRIPT"
    eval "$RESTORE_STOP_SCRIPT" || true
    sleep 5  # 等待进程完全停止
fi

# 下载最新的备份
echo "Downloading latest backup..."
if s3cmd -c /home/user/s3cfg get "$LATEST_BACKUP" "$RESTORE_DEST_DIR/latest_backup.zip"; then
    echo "Backup downloaded successfully."
else
    echo "Error: Failed to download backup from R2."
    # 启动服务（如果指定了启动脚本）
    if [ -n "$RESTORE_START_SCRIPT" ] && [ -f "$RESTORE_START_SCRIPT" ]; then
        echo "Starting service with script: $RESTORE_START_SCRIPT"
        eval "$RESTORE_START_SCRIPT"
    fi
    exit 1
fi

# 解压备份
echo "Extracting backup..."
mkdir -p "$(dirname "$RESTORE_TARGET_DIR")"
cd "$RESTORE_DEST_DIR"
rm -rf "extracted_backup"  # 删除之前的解压目录
if unzip "$RESTORE_DEST_DIR/latest_backup.zip" -d "extracted_backup"; then
    echo "Backup extracted successfully."
    
    # 删除现有数据
    rm -rf "$RESTORE_TARGET_DIR"
    
    # 将备份数据从源目录移动到目标目录
    if [ -d "$RESTORE_DEST_DIR/extracted_backup/$RESTORE_SOURCE_DIR" ]; then
        echo "Moving data from $RESTORE_SOURCE_DIR to $RESTORE_TARGET_DIR"
        mv "$RESTORE_DEST_DIR/extracted_backup/$RESTORE_SOURCE_DIR" "$RESTORE_TARGET_DIR"
    else
        echo "Warning: Source directory $RESTORE_SOURCE_DIR not found in backup. Moving entire backup content."
        # 如果指定的源目录不存在，则移动整个解压内容
        mkdir -p "$RESTORE_TARGET_DIR"
        cp -r "$RESTORE_DEST_DIR/extracted_backup/"* "$RESTORE_TARGET_DIR/"
    fi
else
    echo "Error: Failed to extract backup."
    # 清理临时文件
    rm -f "$RESTORE_DEST_DIR/latest_backup.zip"
    rm -rf "$RESTORE_DEST_DIR/extracted_backup"
    # 启动服务（如果指定了启动脚本）
    if [ -n "$RESTORE_START_SCRIPT" ] && [ -f "$RESTORE_START_SCRIPT" ]; then
        echo "Starting service with script: $RESTORE_START_SCRIPT"
        eval "$RESTORE_START_SCRIPT"
    fi
    exit 1
fi

# 清理临时文件
rm -f "$RESTORE_DEST_DIR/latest_backup.zip"
rm -rf "$RESTORE_DEST_DIR/extracted_backup"

# 启动服务（如果指定了启动脚本）
if [ -n "$RESTORE_START_SCRIPT" ] && [ -f "$RESTORE_START_SCRIPT" ]; then
    echo "Starting service with script: $RESTORE_START_SCRIPT"
    eval "$RESTORE_START_SCRIPT"
fi

echo "Restore completed. Data restored from $LATEST_BACKUP"