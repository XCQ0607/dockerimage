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

62 directories, 103 files
```

## 镜像: gapi

### 构建信息
- 目录: gapi/
- 完整镜像名: ghcr.io/xcq0607/gapi:latest
- 架构支持: linux/amd64, linux/arm64
- 构建状态: ❌ 失败
- 构建耗时: 358s

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
#20 32.81 693700K .......... .......... .......... .......... .......... 99% 22.3M 0s
#20 32.82 693750K .......... .......... .......... .......... .......... 99% 21.6M 0s
#20 32.82 693800K .......... .......... .......... .......... .......... 99% 22.2M 0s
#20 32.82 693850K .......... .......... .......... .......... .......... 99% 23.1M 0s
#20 32.82 693900K .......... .......... .......... .......... .......... 99% 22.5M 0s
#20 32.83 693950K .......... .......... .......... .......... .......... 99% 17.1M 0s
#20 32.83 694000K .......... .......... .......... .......... .......... 99% 21.8M 0s
#20 32.83 694050K .......... .......... .......... .......... .......... 99% 20.3M 0s
#20 32.83 694100K .......... .......... .......... .......... .......... 99% 21.2M 0s
#20 32.84 694150K .......... .......... .......... .......... .......... 99% 22.8M 0s
#20 32.84 694200K .......... .......... .......... .......... .......... 99% 21.6M 0s
#20 32.84 694250K .......... .......... .......... .......... .......... 99% 22.2M 0s
#20 32.84 694300K .......... .......... .......... .......... .......... 99% 22.3M 0s
#20 32.84 694350K .......... .......... .......... .......... .......... 99% 16.5M 0s
#20 32.85 694400K .......... .......... .......... .......... .......... 99% 20.2M 0s
#20 32.85 694450K .......... .......... .......... .......... .......... 99% 23.3M 0s
#20 32.85 694500K .......... .......... .......... .......... .......... 99% 21.6M 0s
#20 32.85 694550K .......... .......... .......... .......... .......... 99% 22.2M 0s
#20 32.86 694600K .......... .......... .......... .......... .......... 99% 21.3M 0s
#20 32.86 694650K .......... .......... .......... .......... .......... 99% 23.1M 0s
#20 32.86 694700K .......... .......... .......... .......... .......... 99% 22.7M 0s
#20 32.86 694750K .......... .......... .......... .......... .......... 99% 17.6M 0s
#20 32.87 694800K .......... .......... .......... .......... .......... 99% 23.9M 0s
#20 32.87 694850K .......... .......... .......... .......... .......... 99% 22.3M 0s
#20 32.87 694900K .......... .......... .......... .......... .......... 99% 20.8M 0s
#20 32.87 694950K .......... .......... .......... .......... .......... 99% 21.8M 0s
#20 32.87 695000K .......... .......... .......... .......... .......... 99% 20.9M 0s
#20 32.88 695050K .......... .......... .......... .......... .......... 99% 24.4M 0s
#20 32.88 695100K .......... .......... .......... .......... .......... 99% 20.6M 0s
#20 32.88 695150K .......... .......... .......... .......... .......... 99% 17.1M 0s
#20 32.88 695200K .......... .......... .......... .......... .......... 99% 21.9M 0s
#20 32.89 695250K .......... .......... .......... .......... .......... 99% 22.2M 0s
#20 32.89 695300K .......... .......... .......... .......... .......... 99% 21.0M 0s
#20 32.89 695350K .......... .......... .......... .......... .......... 99% 21.0M 0s
#20 32.89 695400K .......... .......... .......... .......... .......... 99% 22.0M 0s
#20 32.90 695450K .......... .......... .......... .......... .......... 99% 22.3M 0s
#20 32.90 695500K .......... .......... .......... .......... .......... 99% 22.5M 0s
#20 32.90 695550K .......... .......... .......... .......... .......... 99% 16.5M 0s
#20 32.90 695600K .......... .......... .......... .......... .......... 99% 24.4M 0s
#20 32.90 695650K .......... .......... .......... .......... .......... 99% 25.7M 0s
#20 32.91 695700K .......... .......... .......... .......... .......... 99% 23.0M 0s
#20 32.91 695750K .......... .......... .......... .......... .......... 99% 21.1M 0s
#20 32.91 695800K .......... .......... .......... .......... .......... 99% 22.4M 0s
#20 32.91 695850K .......... .......... .......... .......... .......... 99% 21.2M 0s
#20 32.92 695900K .......... .......... .......... .......... .......... 99% 22.2M 0s
#20 32.92 695950K .......... .......... .......... .......... .......... 99% 18.5M 0s
#20 32.92 696000K .......                                               100% 13.4T=32s
#20 32.92 
#20 32.92 2026-01-20 13:53:03 (21.0 MB/s) - 'camoufox.zip' saved [712711368/712711368]
#20 32.92 
#20 33.02 
#20 33.02 7-Zip [64] 16.02 : Copyright (c) 1999-2016 Igor Pavlov : 2016-05-21
#20 33.02 p7zip Version 16.02 (locale=C,Utf16=off,HugeFiles=on,64 bits,4 CPUs LE)
#20 33.02 
#20 33.02 Scanning the drive for archives:
#20 33.02 1 file, 712711368 bytes (680 MiB)
#20 33.02 
#20 33.02 Extracting archive: camoufox.zip
#20 66.23 --
#20 66.23 Path = camoufox.zip
#20 66.23 Type = zip
#20 66.23 Physical Size = 712711368
#20 66.23 
#20 66.23 Everything is Ok
#20 66.23 
#20 66.23 Folders: 19
#20 66.23 Files: 698
#20 66.23 Size:       1321895211
#20 66.23 Compressed: 712711368
#20 DONE 69.4s

#21 [linux/arm64 7/8] COPY unified-server.js black-browser.js models.json ./
#21 DONE 0.0s

#22 [linux/arm64 8/8] RUN mkdir -p ./auth && chown -R node:node /app
#22 DONE 4.0s

#23 exporting to image
#23 exporting layers
#23 exporting layers 69.3s done
#23 ...

#24 [auth] xcq0607/gapi:pull,push token for ghcr.io
#24 DONE 0.0s

#23 exporting to image
#23 exporting manifest sha256:a88c81549e4a84be3dc43972f4574e04b4b283d91512e2783e814fbf1fe5bbab done
#23 exporting config sha256:8ae6018a4d4e93ba4bb598c0beb2a155f1fe0c3235accb07c7439676d33980aa done
#23 exporting attestation manifest sha256:004a2c597aec166ad2afb5d2143a06e597a2ff8532b745317b38c56963cd95c1 done
#23 exporting manifest sha256:c38fd551c28d1fa8e995ab0e22e72348ad6b3fd43c55218a633e14a0e6ce1231 done
#23 exporting config sha256:3db102c72d2d7a1dcb2d8aaff1d9bac1d8bb9b462be0e0f091856f0605872a16 done
#23 exporting attestation manifest sha256:58655220a5ed891d5695180116cddeea5aeca3b589a3f3190caf6dc20a1d37d1 done
#23 exporting manifest list sha256:f9445179d84a825cf644a64a6037684f42bd71a4d371d6f2078695fc39c00f6d done
#23 pushing layers
#23 pushing layers 0.2s done
#23 ERROR: failed to push ghcr.io/xcq0607/gapi:latest: denied: permission_denied: write_package
------
 > exporting to image:
------
ERROR: failed to build: failed to solve: failed to push ghcr.io/xcq0607/gapi:latest: denied: permission_denied: write_package
```

