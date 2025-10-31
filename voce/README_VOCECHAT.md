# VoceChat集成和R2备份功能说明

## 功能概述

本项目在原有基础上集成了VoceChat服务，并实现了基于Cloudflare R2的自动备份和恢复功能。

## 集成的组件

1. **VoceChat服务** - 通过install.sh脚本直接安装的二进制文件
2. **R2备份功能** - 每小时自动备份VoceChat数据到Cloudflare R2存储桶
3. **自动恢复功能** - 容器启动时自动从R2恢复最新的备份
4. **备份管理工具** - 提供手动备份、恢复、查看备份等高级功能
5. **R2连通性检查工具** - 用于验证R2连接和查看备份状态

## 环境变量配置

在运行容器时，需要配置以下环境变量：

### VoceChat相关
- `VOCE_PORT` - VoceChat服务端口，默认为3000

### R2备份相关
- `R2_ACCESS_KEY_ID` - R2访问密钥ID（必填）
- `R2_SECRET_ACCESS_KEY` - R2秘密访问密钥（必填）
- `R2_ENDPOINT` - R2终结点（必填）
- `R2_BUCKET_NAME` - R2存储桶名称（必填）

## 使用方法

### 构建镜像
```bash
docker build -t base-image .
```

### 运行容器
```bash
docker run -d \
  -p 7860:7860 \
  -p 3000:3000 \
  -e UUID=your-uuid-here \
  -e DOMAIN=your-domain.hf.space \
  -e ARGO_PAT=your-cloudflare-pat \
  -e R2_ACCESS_KEY_ID=your-r2-access-key \
  -e R2_SECRET_ACCESS_KEY=your-r2-secret-key \
  -e R2_ENDPOINT=your-r2-endpoint \
  -e R2_BUCKET_NAME=your-r2-bucket \
  --name base-container \
  base-image
```

## 备份策略

- 每小时自动执行一次备份
- 保留最近5次备份，自动删除旧备份
- 备份文件命名格式：`vocechat_backup_YYYYMMDD_HHMMSS.zip`

## 恢复机制

容器启动时会自动检查R2存储桶中的最新备份：
- 如果存在备份，则下载并恢复数据
- 如果没有备份，则启动全新的VoceChat实例

## 备份管理工具

项目包含一个强大的备份管理工具 [vocechat-backup-manager.sh](file:///e:/Qoder/voce/app/backup/vocechat-backup-manager.sh)，支持以下功能：

### 使用方法
```bash
# 执行手动备份
/app/backup/vocechat-backup-manager.sh --backup

# 恢复最新备份
/app/backup/vocechat-backup-manager.sh --restore

# 恢复指定备份
/app/backup/vocechat-backup-manager.sh --restore s3://bucket/vocechat_backup_20231010_120000.zip

# 列出所有备份
/app/backup/vocechat-backup-manager.sh --list

# 删除旧备份，保留最近3个
/app/backup/vocechat-backup-manager.sh --delete-old 3

# 设置保留备份数量为10个
/app/backup/vocechat-backup-manager.sh --set-keep-count 10

# 查看帮助
/app/backup/vocechat-backup-manager.sh --help
```

## R2连通性检查工具

项目包含一个R2连通性检查工具 [check-r2-connectivity.sh](file:///e:/Qoder/voce/app/backup/check-r2-connectivity.sh)，用于验证R2连接和查看备份状态：

### 使用方法
```bash
# 检查R2连通性
/app/backup/check-r2-connectivity.sh
```

## 目录结构

```
/app/
├── voce/
│   └── start-voce.sh          # VoceChat启动脚本
├── backup/
│   ├── backup-voce.sh         # 自动备份脚本
│   ├── restore-voce.sh        # 自动恢复脚本
│   ├── vocechat-backup-manager.sh  # 备份管理工具
│   └── check-r2-connectivity.sh    # R2连通性检查工具
├── cron/
│   └── my-crontab             # 定时任务配置
└── supervisor/
    └── supervisord.conf       # 进程管理配置
```

## 注意事项

1. 所有服务现在都以user用户（UID 1000）运行，而非root用户，以提高安全性
2. 数据存储在`/home/vocechat-server/data`目录
3. 备份功能依赖s3cmd工具与R2存储桶通信，配置文件存储在`/home/user/s3cfg`
4. 确保R2存储桶已创建并具有正确的访问权限
5. VoceChat现在通过直接运行二进制文件方式启动，而非Docker容器方式
6. 所有目录都设置了正确的用户权限（1000:0）和777权限
7. HOME环境变量已正确设置