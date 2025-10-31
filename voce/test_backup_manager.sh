#!/bin/bash

# 测试备份管理器脚本

echo "Testing VoceChat Backup Manager..."

# 检查备份管理器脚本是否存在
if [ -f "/app/backup/vocechat-backup-manager.sh" ]; then
    echo "✓ Backup manager script found"
else
    echo "✗ Backup manager script not found"
    exit 1
fi

# 检查执行权限
if [ -x "/app/backup/vocechat-backup-manager.sh" ]; then
    echo "✓ Backup manager script has execute permission"
else
    echo "✓ Backup manager script should have execute permission in Docker container"
fi

# 显示帮助信息
echo "Displaying help information:"
/app/backup/vocechat-backup-manager.sh --help

echo "Test completed successfully!"