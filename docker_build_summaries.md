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
│   └── Dockerfile
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

34 directories, 49 files
```

## 镜像: lxmusic

### 构建信息
- 目录: lxmusic/
- 完整镜像名: ghcr.io/xcq0607/lxmusic:latest
- 构建状态: ❌ 失败
- 构建耗时: 1s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/lxmusic:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-lxmusic ghcr.io/xcq0607/lxmusic:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/lxmusic:latest
```

### 构建日志

```
#0 building with "default" instance using docker driver

#1 [internal] load build definition from Dockerfile
#1 transferring dockerfile: 7.59kB done
#1 DONE 0.0s

#2 [auth] library/ubuntu:pull token for registry-1.docker.io
#2 DONE 0.0s

#3 [internal] load metadata for docker.io/library/ubuntu:22.04
#3 DONE 0.7s

#4 [internal] load .dockerignore
#4 transferring context: 2B done
#4 DONE 0.0s

#5 [internal] load build context
#5 transferring context: 2B done
#5 DONE 0.0s

#6 [stage-1 3/9] COPY app /app
#6 ERROR: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::op2r2r37rtab3s71oo5rzyp1a: "/app": not found

#7 [stage-1 2/9] COPY entrypoint.sh /entrypoint.sh
#7 ERROR: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::op2r2r37rtab3s71oo5rzyp1a: "/entrypoint.sh": not found

#8 [builder 1/3] FROM docker.io/library/ubuntu:22.04@sha256:09506232a8004baa32c47d68f1e5c307d648fdd59f5e7eaa42aaf87914100db3
#8 resolve docker.io/library/ubuntu:22.04@sha256:09506232a8004baa32c47d68f1e5c307d648fdd59f5e7eaa42aaf87914100db3 done
#8 sha256:4cb780d50443fc4463f1f9360c03ca46512e4fdd8fd97c5ce7e69c8758924575 424B / 424B done
#8 sha256:392fa14dddd09da29a5c3d26948ff81c494424035b755d01b84ab12d92127433 2.30kB / 2.30kB done
#8 sha256:09506232a8004baa32c47d68f1e5c307d648fdd59f5e7eaa42aaf87914100db3 6.69kB / 6.69kB done
#8 CANCELED
------
 > [stage-1 2/9] COPY entrypoint.sh /entrypoint.sh:
------
------
 > [stage-1 3/9] COPY app /app:
------

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 57)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 57)
Dockerfile:100
--------------------
  98 |     
  99 |     COPY entrypoint.sh /entrypoint.sh
 100 | >>> COPY app /app
 101 |     
 102 |     # 安装Node.js和npm
--------------------
ERROR: failed to build: failed to solve: failed to compute cache key: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::op2r2r37rtab3s71oo5rzyp1a: "/app": not found
```

