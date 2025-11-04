#!/usr/bin/env sh

# 处理多个域名的保活脚本
# 支持DOMAIN环境变量（单个域名）或DOMAINS环境变量（多个域名，以空格或换行分隔）

# 设置超时时间（秒）
TIMEOUT=30

# 确定要检查的域名列表
if [ -n "$DOMAINS" ]; then
    # 如果DOMAINS环境变量存在，使用它（支持空格或换行分隔的多个域名）
    DOMAINS_LIST=$(echo $DOMAINS | tr ',' ' ' | tr '\n' ' ')
elif [ -n "$DOMAIN" ]; then
    # 如果DOMAIN环境变量存在，使用它
    DOMAINS_LIST="$DOMAIN"
else
    # 如果都没有设置，退出
    echo "No DOMAIN or DOMAINS environment variable set"
    exit 1
fi

# 为每个域名执行保活检查
for domain in $DOMAINS_LIST; do
    if [ -n "$domain" ]; then
        # 使用超时设置执行curl请求
        status=$(timeout $TIMEOUT curl -o /dev/null -s -w "%{http_code}" https://$domain 2>/dev/null || echo "TIMEOUT")
        echo `date "+%Y-%m-%d %H:%M:%S"` - Request: https://$domain, Response: $status >> /tmp/keepalive.log
    fi
done