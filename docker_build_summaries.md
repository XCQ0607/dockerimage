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
├── ohmycaptcha
│   ├── CONTRIBUTING.md
│   ├── DISCLAIMER.md
│   ├── DISCLAIMER.zh-CN.md
│   ├── Dockerfile
│   ├── LICENSE
│   ├── README.md
│   ├── README.zh-CN.md
│   ├── SECURITY.md
│   ├── docs
│   │   ├── acceptance.md
│   │   ├── api-reference.md
│   │   ├── assets
│   │   ├── deployment
│   │   ├── faq.md
│   │   ├── getting-started.md
│   │   ├── index.md
│   │   ├── positioning.md
│   │   ├── skill.md
│   │   ├── stylesheets
│   │   ├── usage
│   │   └── zh
│   ├── main.py
│   ├── mkdocs.yml
│   ├── pyrightconfig.json
│   ├── render.yaml
│   ├── requirements.txt
│   ├── skills
│   │   ├── README.md
│   │   ├── ohmycaptcha
│   │   └── ohmycaptcha-image
│   ├── src
│   │   ├── __init__.py
│   │   ├── api
│   │   ├── core
│   │   ├── main.py
│   │   ├── models
│   │   └── services
│   ├── tests
│   │   └── test_api.py
│   └── typings
│       ├── fastapi
│       └── uvicorn
├── ros2-dev
│   ├── Dockerfile
│   └── build.flag
├── ros2-ops
│   ├── Dockerfile
│   └── build.flag
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

83 directories, 131 files
```

## 镜像: ohmycaptcha

### 构建信息
- 目录: ohmycaptcha/
- 完整镜像名: ghcr.io/xcq0607/ohmycaptcha:latest
- 架构支持: linux/amd64, linux/arm64
- 构建状态: ✅ 成功
- 构建耗时: 339s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/ohmycaptcha:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-ohmycaptcha ghcr.io/xcq0607/ohmycaptcha:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/ohmycaptcha:latest
```

### 构建日志

```
#16 52.73 Preparing to unpack .../03-libasound2-data_1.2.6.1-1ubuntu1.1_all.deb ...
#16 52.74 Unpacking libasound2-data (1.2.6.1-1ubuntu1.1) over (1.2.6.1-1ubuntu1) ...
#16 53.04 Preparing to unpack .../04-libcups2_2.4.1op1-1ubuntu4.16_arm64.deb ...
#16 53.05 Unpacking libcups2:arm64 (2.4.1op1-1ubuntu4.16) over (2.4.1op1-1ubuntu4.10) ...
#16 53.29 Preparing to unpack .../05-libegl-mesa0_23.2.1-1ubuntu3.1~22.04.3_arm64.deb ...
#16 53.30 Unpacking libegl-mesa0:arm64 (23.2.1-1ubuntu3.1~22.04.3) over (23.2.1-1ubuntu3.1~22.04.2) ...
#16 53.56 Preparing to unpack .../06-libgbm1_23.2.1-1ubuntu3.1~22.04.3_arm64.deb ...
#16 53.57 Unpacking libgbm1:arm64 (23.2.1-1ubuntu3.1~22.04.3) over (23.2.1-1ubuntu3.1~22.04.2) ...
#16 53.80 Preparing to unpack .../07-libgl1-mesa-dri_23.2.1-1ubuntu3.1~22.04.3_arm64.deb ...
#16 54.16 Unpacking libgl1-mesa-dri:arm64 (23.2.1-1ubuntu3.1~22.04.3) over (23.2.1-1ubuntu3.1~22.04.2) ...
#16 57.52 Preparing to unpack .../08-libglx-mesa0_23.2.1-1ubuntu3.1~22.04.3_arm64.deb ...
#16 57.53 Unpacking libglx-mesa0:arm64 (23.2.1-1ubuntu3.1~22.04.3) over (23.2.1-1ubuntu3.1~22.04.2) ...
#16 57.77 Preparing to unpack .../09-libglapi-mesa_23.2.1-1ubuntu3.1~22.04.3_arm64.deb ...
#16 57.78 Unpacking libglapi-mesa:arm64 (23.2.1-1ubuntu3.1~22.04.3) over (23.2.1-1ubuntu3.1~22.04.2) ...
#16 58.02 Preparing to unpack .../10-libfreetype6_2.11.1+dfsg-1ubuntu0.3_arm64.deb ...
#16 58.02 Unpacking libfreetype6:arm64 (2.11.1+dfsg-1ubuntu0.3) over (2.11.1+dfsg-1ubuntu0.2) ...
#16 58.28 Preparing to unpack .../11-libnss3_2%3a3.98-0ubuntu0.22.04.3_arm64.deb ...
#16 58.28 Unpacking libnss3:arm64 (2:3.98-0ubuntu0.22.04.3) over (2:3.98-0ubuntu0.22.04.2) ...
#16 58.95 Preparing to unpack .../12-xserver-common_2%3a21.1.4-2ubuntu1.7~22.04.16_all.deb ...
#16 58.95 Unpacking xserver-common (2:21.1.4-2ubuntu1.7~22.04.16) over (2:21.1.4-2ubuntu1.7~22.04.11) ...
#16 59.18 Preparing to unpack .../13-xvfb_2%3a21.1.4-2ubuntu1.7~22.04.16_arm64.deb ...
#16 59.19 Unpacking xvfb (2:21.1.4-2ubuntu1.7~22.04.16) over (2:21.1.4-2ubuntu1.7~22.04.11) ...
#16 59.44 Setting up libgbm1:arm64 (23.2.1-1ubuntu3.1~22.04.3) ...
#16 59.44 Setting up fonts-noto-color-emoji (2.047-0ubuntu0.22.04.1) ...
#16 59.45 Setting up libglib2.0-0:arm64 (2.72.4-0ubuntu2.9) ...
#16 59.81 Setting up libnss3:arm64 (2:3.98-0ubuntu0.22.04.3) ...
#16 59.81 Setting up libasound2-data (1.2.6.1-1ubuntu1.1) ...
#16 59.81 Setting up libfreetype6:arm64 (2.11.1+dfsg-1ubuntu0.3) ...
#16 59.82 Setting up libglapi-mesa:arm64 (23.2.1-1ubuntu3.1~22.04.3) ...
#16 59.82 Setting up libcups2:arm64 (2.4.1op1-1ubuntu4.16) ...
#16 59.83 Setting up libasound2:arm64 (1.2.6.1-1ubuntu1.1) ...
#16 59.83 Setting up xserver-common (2:21.1.4-2ubuntu1.7~22.04.16) ...
#16 59.83 Setting up xvfb (2:21.1.4-2ubuntu1.7~22.04.16) ...
#16 59.84 Setting up libgl1-mesa-dri:arm64 (23.2.1-1ubuntu3.1~22.04.3) ...
#16 60.04 Setting up libegl-mesa0:arm64 (23.2.1-1ubuntu3.1~22.04.3) ...
#16 60.04 Setting up libglx-mesa0:arm64 (23.2.1-1ubuntu3.1~22.04.3) ...
#16 60.05 Processing triggers for fontconfig (2.13.1-4.2ubuntu5) ...
#16 60.35 Processing triggers for libc-bin (2.35-0ubuntu3.8) ...
#16 60.74 Removing unused browser at /ms-playwright/chromium-1129
#16 60.74 Removing unused browser at /ms-playwright/ffmpeg-1009
#16 60.74 Removing unused browser at /ms-playwright/firefox-1458
#16 60.74 Removing unused browser at /ms-playwright/webkit-2051
#16 60.87 Downloading Chromium 131.0.6778.33 (playwright build v1148) from https://playwright.azureedge.net/builds/chromium/1148/chromium-linux-arm64.zip
#16 63.68 |                                                                                |   0% of 165.1 MiB
#16 65.57 |■■■■■■■■                                                                        |  10% of 165.1 MiB
#16 66.36 |■■■■■■■■■■■■■■■■                                                                |  20% of 165.1 MiB
#16 67.59 |■■■■■■■■■■■■■■■■■■■■■■■■                                                        |  30% of 165.1 MiB
#16 68.32 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                                                |  40% of 165.1 MiB
#16 68.91 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                                        |  50% of 165.1 MiB
#16 70.11 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                                |  60% of 165.1 MiB
#16 70.67 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                        |  70% of 165.1 MiB
#16 71.20 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                |  80% of 165.1 MiB
#16 71.73 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■        |  90% of 165.1 MiB
#16 72.27 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■| 100% of 165.1 MiB
#16 84.80 Chromium 131.0.6778.33 (playwright build v1148) downloaded to /ms-playwright/chromium-1148
#16 84.81 Downloading FFMPEG playwright build v1010 from https://playwright.azureedge.net/builds/ffmpeg/1010/ffmpeg-linux-arm64.zip
#16 87.68 |                                                                                |   0% of 1.6 MiB
#16 87.74 |■■■■■■■■                                                                        |  10% of 1.6 MiB
#16 87.75 |■■■■■■■■■■■■■■■■                                                                |  20% of 1.6 MiB
#16 87.78 |■■■■■■■■■■■■■■■■■■■■■■■■                                                        |  30% of 1.6 MiB
#16 87.81 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                                                |  40% of 1.6 MiB
#16 87.83 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                                        |  50% of 1.6 MiB
#16 87.85 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                                |  60% of 1.6 MiB
#16 87.86 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                        |  70% of 1.6 MiB
#16 87.88 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                |  80% of 1.6 MiB
#16 87.89 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■        |  90% of 1.6 MiB
#16 87.91 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■| 100% of 1.6 MiB
#16 88.22 FFMPEG playwright build v1010 downloaded to /ms-playwright/ffmpeg-1010
#16 88.22 Downloading Chromium Headless Shell 131.0.6778.33 (playwright build v1148) from https://playwright.azureedge.net/builds/chromium/1148/chromium-headless-shell-linux-arm64.zip
#16 91.00 |                                                                                |   0% of 103 MiB
#16 91.81 |■■■■■■■■                                                                        |  10% of 103 MiB
#16 92.42 |■■■■■■■■■■■■■■■■                                                                |  20% of 103 MiB
#16 92.89 |■■■■■■■■■■■■■■■■■■■■■■■■                                                        |  30% of 103 MiB
#16 93.33 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                                                |  40% of 103 MiB
#16 93.80 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                                        |  50% of 103 MiB
#16 94.13 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                                |  60% of 103 MiB
#16 94.46 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                        |  70% of 103 MiB
#16 94.80 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■                |  80% of 103 MiB
#16 95.53 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■        |  90% of 103 MiB
#16 95.86 |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■| 100% of 103 MiB
#16 103.2 Chromium Headless Shell 131.0.6778.33 (playwright build v1148) downloaded to /ms-playwright/chromium_headless_shell-1148
#16 DONE 106.0s

#17 [linux/arm64 6/6] COPY . .
#17 DONE 0.0s

#18 exporting to image
#18 exporting layers
#18 exporting layers 32.7s done
#18 exporting manifest sha256:407d214bb7373552f4f30565bef900aa95fdc502342c3dd755f14298eccb0993 done
#18 exporting config sha256:2f541afd5019ef090b05eb4192cd977024c86297c6011d9230af3d4d594bc42a done
#18 exporting attestation manifest sha256:bee427c82fafc96e0175aeb7b8fdd869f6d7636340736d305a05e4a8f180eca2 done
#18 exporting manifest sha256:16639c8b4954869c71df0f941580dca29bcdacc33a69fd4ff6c59ca7bfc19ec4 done
#18 exporting config sha256:b792ae7fb299f80eade8779cc131dbe97efe27a25ea63771b1828de7f846355c done
#18 exporting attestation manifest sha256:a8ae0a35f1503a04bfe138083a384b073cc5192eb8327f81a4f4cdf00444f068 done
#18 exporting manifest list sha256:2ca672eea332d914dd340af3d216e61ffb7b8becebc0c22eca22e275b68dd453 done
#18 DONE 32.7s

#19 [auth] xcq0607/ohmycaptcha:pull,push token for ghcr.io
#19 DONE 0.0s
```

