#!/bin/bash

# 通用定时任务设置脚本
# 根据环境变量直接计算cron表达式并写入crontab文件

# 初始化cron文件（只保留注释，实际任务由setup-cron.sh添加）
echo "# Generated crontab file" > /app/cron/my-crontab

# 添加时区设置到crontab文件
if [ -n "$TZ" ]; then
    echo "TZ=$TZ" >> /app/cron/my-crontab
else
    echo "TZ=Asia/Shanghai" >> /app/cron/my-crontab
fi

# 解析时间格式为 cron 表达式
# 参数: 时间字符串、默认cron表达式、任务名称
parse_and_add_cron() {
    local time_str="$1"
    local default_cron="$2"
    local task_name="$3"
    local script_path="$4"
    
    local cron_expr=""
    
    # 解析时间字符串为cron表达式
    if [[ "$time_str" =~ ^[0-9]+-[0-9]+-[0-9]+-[0-9]+-[0-9]+-[0-9]+$ ]]; then
        # 如果是 X-YEAR-X-MONTH-X-D-X-H-X-M 格式
        # 解析各个部分 (年-月-日-时-分-秒)
        local year=$(echo "$time_str" | cut -d'-' -f1)
        local month=$(echo "$time_str" | cut -d'-' -f2)
        local day=$(echo "$time_str" | cut -d'-' -f3)
        local hour=$(echo "$time_str" | cut -d'-' -f4)
        local minute=$(echo "$time_str" | cut -d'-' -f5)
        local second=$(echo "$time_str" | cut -d'-' -f6)
        
        # 转换为 cron 表达式 (分钟 小时 日 月 周)
        # 注意：cron 中周和年的表示方式
        # 这里简化处理，将年份和秒数忽略，因为标准 cron 不支持年份和秒
        # 正确的cron格式应该是: 分 时 日 月 周
        # 0-0-0-1-0-0 表示每小时执行一次，应该是 0 * * * *
        # 0-0-0-0-1-0 表示每分钟执行一次，应该是 * * * * *
        # 0-0-0-0-5-0 表示每5分钟执行一次，应该是 */5 * * * *
        
        if [ "$hour" -eq 1 ] && [ "$minute" -eq 0 ]; then
            # 每小时执行一次
            cron_expr="0 * * * *"
        elif [ "$minute" -eq 1 ]; then
            # 每分钟执行一次
            cron_expr="* * * * *"
        elif [ "$minute" -gt 1 ]; then
            # 每N分钟执行一次
            cron_expr="*/$minute * * * *"
        else
            # 默认每小时执行一次
            cron_expr="0 * * * *"
        fi
    elif [[ "$time_str" =~ ^[0-9]+$ ]]; then
        # 如果是纯数字，按分钟处理
        if [ "$time_str" -lt 1 ]; then
            time_str=1
        fi
        
        # 每N分钟执行一次
        if [ "$time_str" -eq 1 ]; then
            cron_expr="* * * * *"
        else
            cron_expr="*/$time_str * * * *"
        fi
    else
        # 如果不是纯数字，假设是完整的cron表达式
        cron_expr="$time_str"
    fi
    
    # 添加任务到crontab
    echo "# Generated $task_name schedule based on $task_name=$time_str" >> /app/cron/my-crontab
    echo "$cron_expr $script_path" >> /app/cron/my-crontab
    echo "$task_name schedule added: $cron_expr"
}

# 设置默认值
: ${BACKUP_TIME:="0-0-0-1-0-0"}  # 默认每小时执行一次
: ${HC_TIME:="0-0-0-0-1-0"}     # 默认每分钟执行一次
: ${keep_time:="0-0-0-0-5-0"}   # 默认每5分钟执行一次

# 备份任务 - 仅在启用备份功能时添加
if [ "$backup_on" = "true" ] || [ "$backup_on" = "1" ]; then
    parse_and_add_cron "$BACKUP_TIME" "0 0 * * *" "BACKUP_TIME" "/app/backup/backup.sh"
fi

# 健康检查任务 - 仅在启用健康检查功能时添加
if [ "$hc_on" = "true" ] || [ "$hc_on" = "1" ]; then
    parse_and_add_cron "$HC_TIME" "* * * * *" "HC_TIME" "/app/healthcheck.sh"
fi

# 保活任务 - 总是添加
parse_and_add_cron "$keep_time" "*/5 * * * *" "keep_time" "/app/keepalive.sh"

echo "All schedules updated successfully"