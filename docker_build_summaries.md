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
├── docker_build_summaries.md
├── fiora
│   ├── Dockerfile
│   ├── build.flag
│   ├── entrypoint.sh
│   └── supervisord.conf
├── gapi
│   └── Dockerfile
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

57 directories, 74 files
```

## 镜像: gapi

### 构建信息
- 目录: gapi/
- 完整镜像名: ghcr.io/xcq0607/gapi:latest
- 构建状态: ❌ 失败
- 构建耗时: 2s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/gapi:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-gapi ghcr.io/xcq0607/gapi:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/gapi:latest
```

### 构建日志

```
#0 building with "default" instance using docker driver

#1 [internal] load build definition from Dockerfile
#1 transferring dockerfile: 1.70kB done
#1 DONE 0.0s

#2 [internal] load metadata for docker.io/library/node:18-slim
#2 ...

#3 [auth] library/node:pull token for registry-1.docker.io
#3 DONE 0.0s

#2 [internal] load metadata for docker.io/library/node:18-slim
#2 DONE 0.9s

#4 [internal] load .dockerignore
#4 transferring context: 2B done
#4 DONE 0.0s

#5 [internal] load build context
#5 transferring context: 2B done
#5 DONE 0.0s

#6 [6/8] RUN curl -sSL ${CAMOUFOX_URL} -o camoufox-linux.tar.gz &&     tar -xzf camoufox-linux.tar.gz &&     rm camoufox-linux.tar.gz &&     chmod +x /app/camoufox-linux/camoufox
#6 CACHED

#7 [2/8] WORKDIR /app
#7 CACHED

#8 [3/8] RUN apt-get update && apt-get install -y     curl     libasound2 libatk-bridge2.0-0 libatk1.0-0 libatspi2.0-0 libcups2     libdbus-1-3 libdrm2 libgbm1 libgtk-3-0 libnspr4 libnss3 libx11-6     libx11-xcb1 libxcb1 libxcomposite1 libxdamage1 libxext6 libxfixes3     libxrandr2 libxss1 libxtst6 xvfb     && rm -rf /var/lib/apt/lists/*
#8 CACHED

#9 [4/8] COPY package*.json ./
#9 CACHED

#10 [5/8] RUN npm install --production
#10 CACHED

#11 [7/8] COPY unified-server.js black-browser.js models.json ./
#11 ERROR: failed to calculate checksum of ref 25309008-d3b6-4795-9b53-5704e2dd5a06::p5sbk6y8rozzj9isalnzsrunl: "/unified-server.js": not found

#12 [1/8] FROM docker.io/library/node:18-slim@sha256:f9ab18e354e6855ae56ef2b290dd225c1e51a564f87584b9bd21dd651838830e
#12 resolve docker.io/library/node:18-slim@sha256:f9ab18e354e6855ae56ef2b290dd225c1e51a564f87584b9bd21dd651838830e done
#12 sha256:f9ab18e354e6855ae56ef2b290dd225c1e51a564f87584b9bd21dd651838830e 6.49kB / 6.49kB done
#12 sha256:fc3faf127a182135fd956e68d570b1932a758f8008866d8dd6e131cf89de9605 1.93kB / 1.93kB done
#12 sha256:101e0128c8ea90af6e5eba2abbae8486503c6383c35cb30e2c60842a5a288479 6.54kB / 6.54kB done
#12 CANCELED
------
 > [7/8] COPY unified-server.js black-browser.js models.json ./:
------
Dockerfile:29
--------------------
  27 |     # 4. 【核心优化】现在，才拷贝你经常变动的代码文件。
  28 |     # 这一步放在后面，确保你修改代码时，前面所有重量级的层都能利用缓存。
  29 | >>> COPY unified-server.js black-browser.js models.json ./
  30 |     
  31 |     # 5. [保持不变] 创建目录并设置权限。
--------------------
ERROR: failed to build: failed to solve: failed to compute cache key: failed to calculate checksum of ref 25309008-d3b6-4795-9b53-5704e2dd5a06::p5sbk6y8rozzj9isalnzsrunl: "/unified-server.js": not found
```

