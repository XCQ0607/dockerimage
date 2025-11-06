#!/bin/bash

# 通用定时任务设置脚本
# 根据环境变量直接计算cron表达式并写入crontab文件

# 解析时间格式为 cron 表达式
# 参数: 时间字符串（格式：年-月-日-时-分-秒）、任务名称、脚本路径
parse_and_add_cron() {
    local time_str="$1"
    local task_name="$2"
    local script_path="$3"
    
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
        
        # 根据时间格式生成相应的cron表达式
        # 规则：
        # - 如果秒>0，则使用秒级调度格式（*/second * * * * * *）
        # - 否则使用标准cron格式（分钟 小时 日 月 周）
        
        if [ "$second" -gt 0 ]; then
            # 秒级调度格式：*/second * * * * * *
            cron_expr="*/$second * * * * * *"
        else
            # 标准cron格式：分钟 小时 日 月 周
            # 需要根据其他字段确定调度频率
            
            # 如果分>0，使用 "*/minute * * * *" 格式
            if [ "$minute" -gt 0 ]; then
                if [ "$minute" -eq 1 ]; then
                    cron_expr="* * * * *"
                else
                    cron_expr="*/$minute * * * *"
                fi
            # 如果时>0，使用 "0 */hour * * *" 格式
            elif [ "$hour" -gt 0 ]; then
                cron_expr="0 */$hour * * *"
            # 如果日>0，使用 "0 0 */day * *" 格式
            elif [ "$day" -gt 0 ]; then
                cron_expr="0 0 */$day * *"
            # 如果月>0，使用 "0 0 1 */month *" 格式
            elif [ "$month" -gt 0 ]; then
                cron_expr="0 0 1 */$month *"
            # 默认每分钟执行
            else
                cron_expr="* * * * *"
            fi
        fi
    elif [[ "$time_str" =~ ^[0-9]+$ ]]; then
        # 如果是纯数字，按分钟处理
        local minutes="$time_str"
        if [ "$minutes" -lt 1 ]; then
            minutes=1
        fi
        
        # 每N分钟执行一次
        if [ "$minutes" -eq 1 ]; then
            cron_expr="* * * * *"
        else
            cron_expr="*/$minutes * * * *"
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

# 初始化cron文件
echo "# Generated crontab file" > /app/cron/my-crontab

# 添加时区设置到crontab文件
if [ -n "$CRON_TZ" ]; then
    echo "CRON_TZ=$CRON_TZ" >> /app/cron/my-crontab
else
    echo "CRON_TZ=Asia/Shanghai" >> /app/cron/my-crontab
fi

# 设置默认值
: ${BACKUP_TIME:="0-0-0-1-0-0"}  # 默认每小时执行一次
: ${HC_TIME:="0-0-0-0-1-0"}     # 默认每分钟执行一次
: ${keep_time:="0-0-0-0-5-0"}   # 默认每5分钟执行一次

# 备份任务 - 仅在启用备份功能时添加
if [ "$backup_on" = "true" ] || [ "$backup_on" = "1" ]; then
    parse_and_add_cron "$BACKUP_TIME" "BACKUP_TIME" "/app/backup/backup.sh"
fi

# 健康检查任务 - 仅在启用健康检查功能时添加
if [ "$hc_on" = "true" ] || [ "$hc_on" = "1" ]; then
    parse_and_add_cron "$HC_TIME" "HC_TIME" "/app/healthcheck.sh"
fi

# 保活任务 - 总是添加
parse_and_add_cron "$keep_time" "keep_time" "/app/keepalive.sh"

echo "All schedules updated successfully"