# Docker Build Summaries

## Repository File Structure
```
.
├── base
│   ├── Dockerfile
│   ├── app
│   │   ├── backup
│   │   ├── cron
│   │   ├── healthcheck.sh
│   │   ├── hysteria
│   │   ├── keepalive.sh
│   │   ├── nginx
│   │   ├── setup-cron.sh
│   │   ├── setup.sh
│   │   ├── supervisor
│   │   └── xy
│   ├── build.flag
│   └── entrypoint.sh
├── base1.zip
├── base2.zip
├── cli
│   ├── Dockerfile
│   └── build.flag
├── cliproxyapi
│   ├── Dockerfile
│   └── build.flag
├── docker_build_summaries.md
├── fiora
│   ├── Dockerfile
│   ├── build.flag
│   ├── entrypoint.sh
│   └── supervisord.conf
├── gapi
│   ├── Dockerfile
│   ├── LICENSE
│   ├── black-browser.js
│   ├── build.flag
│   ├── models.json
│   ├── package-lock.json
│   ├── package.json
│   ├── save-auth.js
│   └── unified-server.js
├── gwebdav
│   ├── Dockerfile
│   ├── LICENSE
│   ├── README_CN.md
│   ├── build.flag
│   ├── entrypoint.sh
│   ├── gdrive
│   │   ├── cache.go
│   │   ├── file_info.go
│   │   ├── file_system.go
│   │   ├── gdrive.go
│   │   ├── oauth2.go
│   │   ├── readonly_file.go
│   │   └── writable_file.go
│   ├── go.mod
│   ├── go.sum
│   ├── justfile
│   ├── litmus
│   │   └── Dockerfile
│   └── main.go
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
├── ros2-dev
│   ├── Dockerfile
│   └── build.flag
├── ros2-ops
│   ├── Dockerfile
│   └── build.flag
├── ros2-ops-py
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

65 directories, 108 files
```

## 镜像: ros2-ops-py

### 构建信息
- 目录: ros2-ops-py/
- 完整镜像名: ghcr.io/xcq0607/ros2-ops-py:latest
- 架构支持: linux/amd64, linux/arm64
- 构建状态: ❌ 失败
- 构建耗时: 1s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/ros2-ops-py:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-ros2-ops-py ghcr.io/xcq0607/ros2-ops-py:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/ros2-ops-py:latest
```

### 构建日志

```
#0 building with "builder-99592a34-0bff-4d87-a9db-843991d6e876" instance using docker-container driver

#1 [internal] load build definition from Dockerfile
#1 transferring dockerfile: 4.45kB done
#1 DONE 0.0s

#2 [linux/amd64 internal] load metadata for docker.io/dustynv/ros:humble-pytorch-l4t-r36.2.0
#2 ...

#3 [auth] dustynv/ros:pull token for registry-1.docker.io
#3 DONE 0.0s

#2 [linux/amd64 internal] load metadata for docker.io/dustynv/ros:humble-pytorch-l4t-r36.2.0
#2 ERROR: docker.io/dustynv/ros:humble-pytorch-l4t-r36.2.0: not found

#4 [linux/arm64 internal] load metadata for docker.io/dustynv/ros:humble-pytorch-l4t-r36.2.0
#4 CANCELED
------
 > [linux/amd64 internal] load metadata for docker.io/dustynv/ros:humble-pytorch-l4t-r36.2.0:
------
Dockerfile:6
--------------------
   4 |     # 【基底终极替换】使用 Dusty-nv (NVIDIA工程师) 官方社区为 JetPack 6 开源的终极神级镜像
   5 |     # 出厂自带配置极度完美的 ROS2 Humble + 底层完整的 CUDA 组件 + GPU版 PyTorch 2.x + 完全编译好支持 nms 的 GPU 版 Torchvision！
   6 | >>> FROM dustynv/ros:humble-pytorch-l4t-r36.2.0
   7 |     
   8 |     LABEL org.opencontainers.image.source=https://github.com/XCQ0607/dockerimage
--------------------
ERROR: failed to build: failed to solve: dustynv/ros:humble-pytorch-l4t-r36.2.0: failed to resolve source metadata for docker.io/dustynv/ros:humble-pytorch-l4t-r36.2.0: docker.io/dustynv/ros:humble-pytorch-l4t-r36.2.0: not found
```

