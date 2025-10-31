#!/bin/bash

# VoceChat备份管理器
# 支持手动备份、手动恢复、查看存储桶备份文件等功能

# 默认保留备份数量
DEFAULT_KEEP_BACKUPS=5

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 显示帮助信息
show_help() {
    echo "VoceChat Backup Manager"
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  --backup                    执行手动备份"
    echo "  --restore [BACKUP_FILE]     恢复指定备份文件，如果不指定则恢复最新备份"
    echo "  --list                      列出所有备份文件"
    echo "  --delete-old [COUNT]        删除旧备份，保留最近COUNT个（默认5个）"
    echo "  --set-keep-count COUNT      设置保留备份数量（默认5个）"
    echo "  --help                      显示此帮助信息"
    echo ""
    echo "环境变量:"
    echo "  R2_ACCESS_KEY_ID           R2访问密钥ID"
    echo "  R2_SECRET_ACCESS_KEY       R2秘密访问密钥"
    echo "  R2_ENDPOINT                R2终结点"
    echo "  R2_BUCKET_NAME             R2存储桶名称"
    echo ""
    echo "示例:"
    echo "  $0 --backup"
    echo "  $0 --restore"
    echo "  $0 --restore s3://bucket/vocechat_backup_20231010_120000.zip"
    echo "  $0 --list"
    echo "  $0 --delete-old 3"
    echo "  $0 --set-keep-count 10"
}

# 检查必要的环境变量
check_env_vars() {
    if [ -z "$R2_ACCESS_KEY_ID" ] || [ -z "$R2_SECRET_ACCESS_KEY" ] || [ -z "$R2_ENDPOINT" ] || [ -z "$R2_BUCKET_NAME" ]; then
        echo -e "${RED}Error: Missing required R2 environment variables${NC}"
        echo "Please set the following environment variables:"
        echo "  R2_ACCESS_KEY_ID"
        echo "  R2_SECRET_ACCESS_KEY"
        echo "  R2_ENDPOINT"
        echo "  R2_BUCKET_NAME"
        exit 1
    fi
}

# 设置s3cmd配置
setup_s3cmd() {
    cat > /root/.s3cfg << EOF
[default]
access_key = $R2_ACCESS_KEY_ID
secret_key = $R2_SECRET_ACCESS_KEY
host_base = $R2_ENDPOINT
host_bucket = $R2_BUCKET_NAME.$R2_ENDPOINT
EOF
}

# 停止VoceChat服务
stop_vocechat() {
    echo "Stopping VoceChat service..."
    pkill -f "vocechat-server" || true
    sleep 5  # 等待进程完全停止
}

# 启动VoceChat服务
start_vocechat() {
    echo "Starting VoceChat service..."
    cd /home/vocechat-server
    ./vocechat-server &
}

# 执行备份
perform_backup() {
    echo -e "${BLUE}Starting VoceChat backup to R2...${NC}"
    
    # 检查数据目录是否存在
    if [ ! -d "/home/vocechat-server/data" ]; then
        echo -e "${YELLOW}Warning: VoceChat data directory not found. Skipping backup.${NC}"
        return 1
    fi

    # 检查数据目录是否为空
    if [ -z "$(ls -A /home/vocechat-server/data)" ]; then
        echo -e "${YELLOW}Warning: VoceChat data directory is empty. Skipping backup.${NC}"
        return 1
    fi

    # 创建备份文件名（带时间戳）
    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
    BACKUP_FILE="vocechat_backup_$TIMESTAMP.zip"

    # 停止VoceChat服务
    stop_vocechat

    # 创建备份
    echo "Creating backup archive..."
    cd /home/vocechat-server
    if zip -r /tmp/$BACKUP_FILE data; then
        echo -e "${GREEN}Backup archive created successfully.${NC}"
    else
        echo -e "${RED}Error: Failed to create backup archive.${NC}"
        # 重新启动服务
        start_vocechat
        return 1
    fi

    # 上传到R2
    echo "Uploading backup to R2..."
    if s3cmd put /tmp/$BACKUP_FILE s3://$R2_BUCKET_NAME/; then
        echo -e "${GREEN}Backup uploaded to R2 successfully.${NC}"
    else
        echo -e "${RED}Error: Failed to upload backup to R2.${NC}"
        # 清理临时文件
        rm -f /tmp/$BACKUP_FILE
        # 重新启动服务
        start_vocechat
        return 1
    fi

    # 清理临时文件
    rm -f /tmp/$BACKUP_FILE

    # 重新启动VoceChat服务
    start_vocechat

    echo -e "${GREEN}Backup completed successfully.${NC}"
    return 0
}

# 恢复备份
perform_restore() {
    local backup_file=$1
    
    echo -e "${BLUE}Starting VoceChat restore from R2...${NC}"
    
    # 如果没有指定备份文件，则使用最新的备份
    if [ -z "$backup_file" ]; then
        # 查找最新的备份文件
        backup_file=$(s3cmd ls s3://$R2_BUCKET_NAME/ | grep vocechat_backup_ | sort -r | head -n 1 | awk '{print $4}')
        
        if [ -z "$backup_file" ]; then
            echo -e "${YELLOW}No backup found in R2.${NC}"
            return 1
        fi
        
        echo "Found latest backup: $backup_file"
    else
        # 检查指定的备份文件是否存在
        if ! s3cmd info "$backup_file" > /dev/null 2>&1; then
            echo -e "${RED}Error: Backup file $backup_file not found in R2.${NC}"
            return 1
        fi
        echo "Using specified backup: $backup_file"
    fi

    # 停止现有VoceChat服务
    stop_vocechat

    # 下载备份
    echo "Downloading backup..."
    if s3cmd get "$backup_file" /tmp/restore_backup.zip; then
        echo -e "${GREEN}Backup downloaded successfully.${NC}"
    else
        echo -e "${RED}Error: Failed to download backup from R2.${NC}"
        # 启动服务
        start_vocechat
        return 1
    fi

    # 解压备份
    echo "Extracting backup..."
    mkdir -p /home/vocechat-server
    cd /home/vocechat-server
    rm -rf data  # 删除现有数据
    if unzip /tmp/restore_backup.zip; then
        echo -e "${GREEN}Backup extracted successfully.${NC}"
    else
        echo -e "${RED}Error: Failed to extract backup.${NC}"
        # 清理临时文件
        rm -f /tmp/restore_backup.zip
        # 启动服务
        start_vocechat
        return 1
    fi

    # 设置权限
    chown -R root:root /home/vocechat-server

    # 清理临时文件
    rm -f /tmp/restore_backup.zip

    # 启动VoceChat服务
    start_vocechat

    echo -e "${GREEN}Restore completed. VoceChat data restored from $backup_file${NC}"
    return 0
}

# 列出所有备份
list_backups() {
    echo -e "${BLUE}Listing all backups in R2...${NC}"
    s3cmd ls s3://$R2_BUCKET_NAME/ | grep vocechat_backup_ | sort -r
}

# 删除旧备份
delete_old_backups() {
    local keep_count=${1:-$DEFAULT_KEEP_BACKUPS}
    
    echo -e "${BLUE}Deleting old backups, keeping last $keep_count...${NC}"
    
    # 获取要删除的备份列表
    local backups_to_delete=$(s3cmd ls s3://$R2_BUCKET_NAME/ | grep vocechat_backup_ | sort -r | tail -n +$((keep_count + 1)) | awk '{print $4}')
    
    if [ -z "$backups_to_delete" ]; then
        echo -e "${YELLOW}No old backups to delete.${NC}"
        return 0
    fi
    
    echo "Deleting the following backups:"
    echo "$backups_to_delete"
    
    # 删除旧备份
    echo "$backups_to_delete" | while read -r backup; do
        if [ -n "$backup" ]; then
            if s3cmd del "$backup"; then
                echo -e "${GREEN}Deleted: $backup${NC}"
            else
                echo -e "${RED}Failed to delete: $backup${NC}"
            fi
        fi
    done
    
    echo -e "${GREEN}Old backup deletion completed.${NC}"
}

# 设置保留备份数量
set_keep_count() {
    local count=$1
    
    if [ -z "$count" ] || ! [[ "$count" =~ ^[0-9]+$ ]]; then
        echo -e "${RED}Error: Invalid count. Please provide a positive integer.${NC}"
        return 1
    fi
    
    # 更新默认保留备份数量
    DEFAULT_KEEP_BACKUPS=$count
    echo -e "${GREEN}Default keep count set to $count.${NC}"
    return 0
}

# 主函数
main() {
    # 检查参数
    if [ $# -eq 0 ]; then
        show_help
        exit 0
    fi
    
    # 检查环境变量
    check_env_vars
    
    # 设置s3cmd配置
    setup_s3cmd
    
    # 解析参数
    case "$1" in
        --backup)
            perform_backup
            ;;
        --restore)
            perform_restore "$2"
            ;;
        --list)
            list_backups
            ;;
        --delete-old)
            delete_old_backups "$2"
            ;;
        --set-keep-count)
            set_keep_count "$2"
            ;;
        --help|*)
            show_help
            ;;
    esac
}

# 执行主函数
main "$@"
