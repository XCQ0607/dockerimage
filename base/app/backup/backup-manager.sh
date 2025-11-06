#!/bin/bash

# 通用备份管理器
# 支持手动备份、手动恢复、查看存储桶备份文件等功能

# 设置默认值
: ${KEEP_BACKUPS:=5}
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

# 默认保留备份数量
DEFAULT_KEEP_BACKUPS=$KEEP_BACKUPS

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 显示帮助信息
show_help() {
    echo "通用备份管理器"
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
    echo "  BACKUP_NAME                备份文件名前缀（默认: backup）"
    echo "  BACKUP_SOURCE_DIR          备份源目录（默认: /app/data）"
    echo "  BACKUP_DEST_DIR            备份目标目录（默认: /tmp）"
    echo "  BACKUP_START_SCRIPT        备份前执行的脚本路径"
    echo "  BACKUP_STOP_SCRIPT         备份前停止服务的脚本路径"
    echo "  RESTORE_TARGET_DIR         恢复目标目录（默认: /app/data）"
    echo "  RESTORE_SOURCE_DIR         恢复源目录（在备份文件中的路径，默认: data）"
    echo "  RESTORE_START_SCRIPT       恢复后启动服务的脚本路径"
    echo "  RESTORE_STOP_SCRIPT        恢复前停止服务的脚本路径"
    echo "  KEEP_BACKUPS               保留备份文件数量（默认: 5）"
    echo ""
    echo "示例:"
    echo "  $0 --backup"
    echo "  $0 --restore"
    echo "  $0 --restore s3://bucket/backup_20231010_120000.zip"
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
    mkdir -p /home/user
    cat > /home/user/s3cfg << EOF
[default]
access_key = $R2_ACCESS_KEY_ID
secret_key = $R2_SECRET_ACCESS_KEY
bucket_location = auto
host_base = $R2_ENDPOINT
host_bucket = $R2_BUCKET_NAME.$R2_ENDPOINT
EOF
}

# 停止服务（如果指定了停止脚本）
stop_service() {
    local script_path="$1"
    local service_name="$2"
    
    if [ -n "$script_path" ] && [ -f "$script_path" ]; then
        echo "Stopping $service_name service with script: $script_path"
        eval "$script_path" || true
        sleep 5  # 等待进程完全停止
    else
        echo "No stop script specified for $service_name service or script not found."
    fi
}

# 启动服务（如果指定了启动脚本）
start_service() {
    local script_path="$1"
    local service_name="$2"
    
    if [ -n "$script_path" ] && [ -f "$script_path" ]; then
        echo "Starting $service_name service with script: $script_path"
        eval "$script_path"
    else
        echo "No start script specified for $service_name service or script not found."
    fi
}

# 测试R2连通性
test_connectivity() {
    echo -e "${BLUE}Testing Cloudflare R2 connectivity...${NC}"
    
    # 测试连接
    if s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ >/dev/null 2>&1; then
        echo -e "${GREEN}✓ Successfully connected to R2 bucket: $R2_BUCKET_NAME${NC}"
        
        # 列出存储桶中的文件数量
        file_count=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | wc -l)
        echo -e "${GREEN}✓ Bucket contains $file_count objects${NC}"
        
        # 检查是否有备份文件
        backup_count=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep "${BACKUP_NAME}_backup_" | wc -l)
        if [ "$backup_count" -gt 0 ]; then
            echo -e "${GREEN}✓ Found $backup_count ${BACKUP_NAME} backup(s) in the bucket${NC}"
            
            # 显示最新的备份
            latest_backup=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep "${BACKUP_NAME}_backup_" | sort -r | head -n 1 | awk '{print $4}')
            echo -e "${BLUE}Latest backup: $latest_backup${NC}"
        else
            echo -e "${YELLOW}⚠ No ${BACKUP_NAME} backups found in the bucket${NC}"
        fi
        
        echo -e "${GREEN}All R2 connectivity tests passed!${NC}"
        return 0
    else
        echo -e "${RED}✗ Failed to connect to R2 bucket: $R2_BUCKET_NAME${NC}"
        echo -e "${RED}Please check your R2 credentials and endpoint configuration${NC}"
        return 1
    fi
}

# 执行备份
perform_backup() {
    echo -e "${BLUE}Starting backup to R2...${NC}"
    
    # 检查数据目录是否存在
    if [ ! -d "$BACKUP_SOURCE_DIR" ]; then
        echo -e "${YELLOW}Warning: Backup source directory not found: $BACKUP_SOURCE_DIR. Skipping backup.${NC}"
        return 1
    fi

    # 检查数据目录是否为空
    if [ -z "$(ls -A "$BACKUP_SOURCE_DIR")" ]; then
        echo -e "${YELLOW}Warning: Backup source directory is empty: $BACKUP_SOURCE_DIR. Skipping backup.${NC}"
        return 1
    fi

    # 创建备份文件名（带时间戳）
    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
    BACKUP_FILE="${BACKUP_NAME}_backup_$TIMESTAMP.zip"

    # 停止服务（如果指定了停止脚本）
    stop_service "$BACKUP_STOP_SCRIPT" "backup"

    # 创建备份
    echo "Creating backup archive..."
    cd "$(dirname "$BACKUP_SOURCE_DIR")"
    if zip -r "$BACKUP_DEST_DIR/$BACKUP_FILE" "$(basename "$BACKUP_SOURCE_DIR")"; then
        echo -e "${GREEN}Backup archive created successfully.${NC}"
    else
        echo -e "${RED}Error: Failed to create backup archive.${NC}"
        # 启动服务（如果指定了启动脚本）
        start_service "$BACKUP_START_SCRIPT" "backup"
        return 1
    fi

    # 上传到R2
    echo "Uploading backup to R2..."
    if s3cmd -c /home/user/s3cfg put "$BACKUP_DEST_DIR/$BACKUP_FILE" s3://$R2_BUCKET_NAME/; then
        echo -e "${GREEN}Backup uploaded to R2 successfully.${NC}"
    else
        echo -e "${RED}Error: Failed to upload backup to R2.${NC}"
        # 清理临时文件
        rm -f "$BACKUP_DEST_DIR/$BACKUP_FILE"
        # 启动服务（如果指定了启动脚本）
        start_service "$BACKUP_START_SCRIPT" "backup"
        return 1
    fi

    # 清理临时文件
    rm -f "$BACKUP_DEST_DIR/$BACKUP_FILE"

    # 删除旧备份（保留最近指定数量）
    echo "Cleaning up old backups..."
    s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep "${BACKUP_NAME}_backup_" | sort -r | awk '{print $4}' | tail -n +$((DEFAULT_KEEP_BACKUPS + 1)) | while read -r OLD_BACKUP; do
        if [ -n "$OLD_BACKUP" ]; then
            s3cmd -c /home/user/s3cfg del "$OLD_BACKUP"
            echo "Deleted old backup: $OLD_BACKUP"
        fi
    done

    # 启动服务（如果指定了启动脚本）
    start_service "$BACKUP_START_SCRIPT" "backup"

    echo -e "${GREEN}Backup completed successfully.${NC}"
    return 0
}

# 恢复备份
perform_restore() {
    local backup_file=$1
    
    echo -e "${BLUE}Starting restore from R2...${NC}"
    
    # 如果没有指定备份文件，则使用最新的备份
    if [ -z "$backup_file" ]; then
        # 查找最新的备份文件
        backup_file=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep "${BACKUP_NAME}_backup_" | sort -r | head -n 1 | awk '{print $4}')
        
        if [ -z "$backup_file" ]; then
            echo -e "${YELLOW}No backup found in R2.${NC}"
            return 1
        fi
        
        echo "Found latest backup: $backup_file"
    else
        # 检查指定的备份文件是否存在
        if ! s3cmd -c /home/user/s3cfg info "$backup_file" > /dev/null 2>&1; then
            echo -e "${RED}Error: Backup file $backup_file not found in R2.${NC}"
            return 1
        fi
        echo "Using specified backup: $backup_file"
    fi

    # 停止现有服务（如果指定了停止脚本）
    stop_service "$RESTORE_STOP_SCRIPT" "restore"

    # 下载备份
    echo "Downloading backup..."
    if s3cmd -c /home/user/s3cfg get "$backup_file" "$RESTORE_DEST_DIR/restore_backup.zip"; then
        echo -e "${GREEN}Backup downloaded successfully.${NC}"
    else
        echo -e "${RED}Error: Failed to download backup from R2.${NC}"
        # 启动服务（如果指定了启动脚本）
        start_service "$RESTORE_START_SCRIPT" "restore"
        return 1
    fi

    # 解压备份
    echo "Extracting backup..."
    mkdir -p "$(dirname "$RESTORE_TARGET_DIR")"
    cd "$RESTORE_DEST_DIR"
    rm -rf "extracted_backup"  # 删除之前的解压目录
    if unzip "$RESTORE_DEST_DIR/restore_backup.zip" -d "extracted_backup"; then
        echo -e "${GREEN}Backup extracted successfully.${NC}"
        
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
        echo -e "${RED}Error: Failed to extract backup.${NC}"
        # 清理临时文件
        rm -f "$RESTORE_DEST_DIR/restore_backup.zip"
        # 启动服务（如果指定了启动脚本）
        start_service "$RESTORE_START_SCRIPT" "restore"
        return 1
    fi

    # 清理临时文件
    rm -f "$RESTORE_DEST_DIR/restore_backup.zip"
    rm -rf "$RESTORE_DEST_DIR/extracted_backup"

    # 启动服务（如果指定了启动脚本）
    start_service "$RESTORE_START_SCRIPT" "restore"

    echo -e "${GREEN}Restore completed. Data restored from $backup_file${NC}"
    return 0
}

# 列出所有备份
list_backups() {
    echo -e "${BLUE}Listing all backups in R2...${NC}"
    s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep "${BACKUP_NAME}_backup_" | sort -r
}

# 删除旧备份
delete_old_backups() {
    local keep_count=${1:-$DEFAULT_KEEP_BACKUPS}
    
    echo -e "${BLUE}Deleting old backups, keeping last $keep_count...${NC}"
    
    # 获取要删除的备份列表
    local backups_to_delete=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep "${BACKUP_NAME}_backup_" | sort -r | tail -n +$((keep_count + 1)) | awk '{print $4}')
    
    if [ -z "$backups_to_delete" ]; then
        echo -e "${YELLOW}No old backups to delete.${NC}"
        return 0
    fi
    
    echo "Deleting the following backups:"
    echo "$backups_to_delete"
    
    # 删除旧备份
    echo "$backups_to_delete" | while read -r backup; do
        if [ -n "$backup" ]; then
            if s3cmd -c /home/user/s3cfg del "$backup"; then
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












