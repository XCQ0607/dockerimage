#!/bin/bash

# 检查Cloudflare R2连通性的脚本

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Checking Cloudflare R2 connectivity...${NC}"

# 检查必要的环境变量
if [ -z "$R2_ACCESS_KEY_ID" ] || [ -z "$R2_SECRET_ACCESS_KEY" ] || [ -z "$R2_ENDPOINT" ] || [ -z "$R2_BUCKET_NAME" ]; then
    echo -e "${RED}Error: Missing required R2 environment variables${NC}"
    echo "Please set the following environment variables:"
    echo "  R2_ACCESS_KEY_ID"
    echo "  R2_SECRET_ACCESS_KEY"
    echo "  R2_ENDPOINT"
    echo "  R2_BUCKET_NAME"
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

echo -e "${BLUE}Testing R2 connection...${NC}"

# 测试连接
if s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ >/dev/null 2>&1; then
    echo -e "${GREEN}✓ Successfully connected to R2 bucket: $R2_BUCKET_NAME${NC}"
    
    # 列出存储桶中的文件数量
    file_count=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | wc -l)
    echo -e "${GREEN}✓ Bucket contains $file_count objects${NC}"
    
    # 检查是否有备份文件
    backup_count=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep vocechat_backup_ | wc -l)
    if [ "$backup_count" -gt 0 ]; then
        echo -e "${GREEN}✓ Found $backup_count VoceChat backup(s) in the bucket${NC}"
        
        # 显示最新的备份
        latest_backup=$(s3cmd -c /home/user/s3cfg ls s3://$R2_BUCKET_NAME/ | grep vocechat_backup_ | sort -r | head -n 1 | awk '{print $4}')
        echo -e "${BLUE}Latest backup: $latest_backup${NC}"
    else
        echo -e "${YELLOW}⚠ No VoceChat backups found in the bucket${NC}"
    fi
    
    echo -e "${GREEN}All R2 connectivity tests passed!${NC}"
    exit 0
else
    echo -e "${RED}✗ Failed to connect to R2 bucket: $R2_BUCKET_NAME${NC}"
    echo -e "${RED}Please check your R2 credentials and endpoint configuration${NC}"
    exit 1
fi