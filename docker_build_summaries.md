# Docker Build Summaries

## Repository File Structure
```
.
├── base1.zip
├── base2.zip
├── docker_build_summaries.md
├── fiora
│   ├── Dockerfile
│   ├── build.flag
│   ├── entrypoint.sh
│   └── supervisord.conf
├── lxmusic
│   ├── Dockerfile
│   ├── app
│   │   ├── backup
│   │   ├── cron
│   │   ├── healthcheck.sh
│   │   ├── keepalive.sh
│   │   ├── lx
│   │   ├── setup-cron.sh
│   │   ├── setup.sh
│   │   ├── supervisor
│   │   └── xy
│   ├── build.flag
│   └── entrypoint.sh
├── nezha
│   ├── Dockerfile
│   ├── app
│   │   ├── backup
│   │   ├── cron
│   │   ├── healthcheck.sh
│   │   ├── hysteria
│   │   ├── install-nezha.sh
│   │   ├── keepalive.sh
│   │   ├── nezha-start.sh
│   │   ├── nezha-stop.sh
│   │   ├── nezha.sh
│   │   ├── nginx
│   │   ├── setup-cron.sh
│   │   ├── setup-nginx.sh
│   │   ├── supervisor
│   │   └── xy
│   ├── build.flag
│   └── entrypoint.sh
├── rustdesk
│   ├── Dockerfile
│   ├── app
│   │   ├── cron
│   │   ├── keepalive.sh
│   │   ├── rustdesk-api
│   │   ├── rustdesk-server
│   │   ├── supervisor
│   │   └── xy
│   ├── build.flag
│   ├── entrypoint.sh
│   ├── install.sh
│   ├── 注意事项
│   ├── 部署文档
│   └── 项目仓库
├── voce
│   ├── Dockerfile
│   ├── R2储存桶
│   ├── README_VOCECHAT.md
│   ├── app
│   │   ├── backup
│   │   ├── cron
│   │   ├── healthcheck.sh
│   │   ├── keepalive.sh
│   │   ├── supervisor
│   │   ├── voce
│   │   └── xy
│   ├── build.flag
│   ├── entrypoint.sh
│   ├── install.sh
│   ├── test_backup_manager.sh
│   ├── test_install.sh
│   ├── update.sh
│   ├── 备份
│   ├── 新项目dockerfile
│   ├── 注意事项
│   └── 项目
├── xray
│   ├── Dockerfile
│   ├── app
│   │   ├── cron
│   │   ├── keepalive.sh
│   │   ├── supervisor
│   │   └── xy
│   ├── build.flag
│   ├── build.sh
│   └── entrypoint.sh
├── xrayargo
│   ├── Dockerfile
│   ├── app
│   │   ├── cron
│   │   ├── keepalive.sh
│   │   ├── supervisor
│   │   └── xy
│   ├── build.flag
│   ├── build.sh
│   └── entrypoint.sh
└── xrayfiora
    ├── Dockerfile
    ├── app
    │   ├── cron
    │   ├── keepalive.sh
    │   ├── mongo
    │   ├── redis
    │   ├── start-fiora.sh
    │   ├── supervisor
    │   ├── test-services.sh
    │   └── xy
    ├── build.flag
    ├── build.sh
    ├── entrypoint.sh
    └── fiora

48 directories, 66 files
```

## 镜像: nezha

### 构建信息
- 目录: nezha/
- 完整镜像名: ghcr.io/xcq0607/nezha:latest
- 构建状态: ❌ 失败
- 构建耗时: 3s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/nezha:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-nezha ghcr.io/xcq0607/nezha:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/nezha:latest
```

### 构建日志

```
#0 building with "default" instance using docker driver

#1 [internal] load build definition from Dockerfile
#1 transferring dockerfile: 10.49kB done
#1 DONE 0.0s
Dockerfile:77
--------------------
  76 |     # HOME：用户主目录，默认值为/home/user，非必填，示例输入：/home/user
  77 | >>> ENV TZ=Asia/Shanghai \
  78 | >>>     UUID=2982f122-9649-40dc-bc15-fa3ec91d8921 \
  79 | >>>     DOMAIN=web3x-p.hf.space \
  80 | >>>     ARGO_PAT= \
  81 | >>>     HOME=/home/user \
  82 | >>>     PATH="/usr/local/bin/nginx/sbin:${PATH}" \
  83 | >>> # R2备份相关环境变量
  84 | >>> # R2_ACCESS_KEY_ID：R2访问密钥ID，默认值为空，非必填，示例输入：your-access-key-id
  85 | >>> # R2_SECRET_ACCESS_KEY：R2密钥，默认值为空，非必填，示例输入：your-secret-access-key
  86 | >>> # R2_ENDPOINT：R2端点地址，默认值为空，非必填，示例输入：https://your-account-id.r2.cloudflarestorage.com
  87 | >>> # R2_BUCKET_NAME：R2存储桶名称，默认值为空，非必填，示例输入：your-bucket-name
  88 | >>> # BACKUP_NAME：备份文件名前缀，默认值为program，非必填，示例输入：your-program-name
  89 | >>> # BACKUP_SOURCE_DIR：备份源目录，默认值为/app/data，非必填，示例输入：/path/to/source
  90 | >>> # BACKUP_DEST_DIR：备份目标目录，默认值为/tmp，非必填，示例输入：/path/to/destination
  91 | >>> # BACKUP_START_SCRIPT：备份前执行的脚本路径，默认值为空，非必填，示例输入：/path/to/start-script.sh
  92 | >>> # BACKUP_STOP_SCRIPT：备份前停止服务的脚本路径，默认值为空，非必填，示例输入：/path/to/stop-script.sh
  93 | >>> # RESTORE_TARGET_DIR：恢复目标目录，默认值为/app/data，非必填，示例输入：/path/to/restore-target
  94 | >>> # RESTORE_SOURCE_DIR：恢复源目录（在备份文件中的路径），默认值为data，非必填，示例输入：data
  95 | >>> # RESTORE_DEST_DIR：恢复文件下载目录，默认值为/tmp，非必填，示例输入：/path/to/restore-destination
  96 | >>> # RESTORE_START_SCRIPT：恢复后启动服务的脚本路径，默认值为空，非必填，示例输入：/path/to/start-script.sh
  97 | >>> # RESTORE_STOP_SCRIPT：恢复前停止服务的脚本路径，默认值为空，非必填，示例输入：/path/to/stop-script.sh
  98 | >>> # KEEP_BACKUPS：保留备份文件数量，默认值为5，非必填，示例输入：5
  99 | >>> # BACKUP_TIME：备份时间设置，支持X-YEAR-X-MONTH-X-D-X-H-X-M格式或标准cron表达式，默认值为"0-0-0-1-0-0"（每小时执行一次），非必填，示例输入：0-0-0-1-0-0 或 0 * * * *
 100 | >>> # backup_on：是否启用备份功能，默认值为true，非必填，示例输入：true 或 false
 101 | >>> # hc_on：是否启用健康检查功能，默认值为true，非必填，示例输入：true 或 false
 102 | >>> # keep_time：保活任务执行间隔时间，支持X-YEAR-X-MONTH-X-D-X-H-X-M格式、纯数字（分钟）或标准cron表达式，默认值为"0-0-0-0-5-0"（每5分钟执行一次），非必填，示例输入：0-0-0-0-5-0 或 5 或 */5 * * * *
 103 | >>> ENV R2_ACCESS_KEY_ID= \
 104 | >>>     R2_SECRET_ACCESS_KEY= \
 105 | >>>     R2_ENDPOINT= \
 106 | >>>     R2_BUCKET_NAME= \
 107 | >>>     BACKUP_NAME=X-Nezha \
 108 | >>>     BACKUP_SOURCE_DIR=/opt/nezha/dashboard/data \
 109 | >>>     BACKUP_DEST_DIR=/tmp \
 110 | >>>     BACKUP_START_SCRIPT=/app/nezha-start.sh \
 111 | >>>     BACKUP_STOP_SCRIPT=/app/nezha-stop.sh \
 112 | >>>     RESTORE_TARGET_DIR=/opt/nezha/dashboard/data \
 113 | >>>     RESTORE_SOURCE_DIR=data \
 114 | >>>     RESTORE_DEST_DIR=/tmp \
 115 | >>>     RESTORE_START_SCRIPT=/app/nezha-start.sh \
 116 | >>>     RESTORE_STOP_SCRIPT=/app/nezha-stop.sh \
 117 | >>>     KEEP_BACKUPS=5 \
 118 | >>>     BACKUP_TIME="0-0-0-1-0-0" \
 119 | >>>     backup_on=true \
 120 | >>>     hc_on=true \
 121 | >>>     keep_time="0-0-0-0-5-0"
 122 |     
--------------------
ERROR: failed to build: failed to solve: Syntax error - can't find = in "ENV". Must be of the form: name=value
```

