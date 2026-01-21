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
- 构建耗时: 349s

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
#20 30.04 693700K .......... .......... .......... .......... .......... 99% 25.3M 0s
#20 30.04 693750K .......... .......... .......... .......... .......... 99% 25.5M 0s
#20 30.05 693800K .......... .......... .......... .......... .......... 99% 24.7M 0s
#20 30.05 693850K .......... .......... .......... .......... .......... 99% 23.4M 0s
#20 30.05 693900K .......... .......... .......... .......... .......... 99% 18.8M 0s
#20 30.05 693950K .......... .......... .......... .......... .......... 99% 25.7M 0s
#20 30.05 694000K .......... .......... .......... .......... .......... 99% 25.2M 0s
#20 30.06 694050K .......... .......... .......... .......... .......... 99% 24.7M 0s
#20 30.06 694100K .......... .......... .......... .......... .......... 99% 23.6M 0s
#20 30.06 694150K .......... .......... .......... .......... .......... 99% 20.0M 0s
#20 30.06 694200K .......... .......... .......... .......... .......... 99% 26.0M 0s
#20 30.07 694250K .......... .......... .......... .......... .......... 99% 25.2M 0s
#20 30.07 694300K .......... .......... .......... .......... .......... 99% 19.1M 0s
#20 30.07 694350K .......... .......... .......... .......... .......... 99% 25.2M 0s
#20 30.07 694400K .......... .......... .......... .......... .......... 99% 23.1M 0s
#20 30.07 694450K .......... .......... .......... .......... .......... 99% 20.9M 0s
#20 30.08 694500K .......... .......... .......... .......... .......... 99% 23.0M 0s
#20 30.08 694550K .......... .......... .......... .......... .......... 99% 25.2M 0s
#20 30.08 694600K .......... .......... .......... .......... .......... 99% 24.8M 0s
#20 30.08 694650K .......... .......... .......... .......... .......... 99% 19.9M 0s
#20 30.08 694700K .......... .......... .......... .......... .......... 99% 24.8M 0s
#20 30.09 694750K .......... .......... .......... .......... .......... 99% 24.3M 0s
#20 30.09 694800K .......... .......... .......... .......... .......... 99% 25.4M 0s
#20 30.09 694850K .......... .......... .......... .......... .......... 99% 22.2M 0s
#20 30.09 694900K .......... .......... .......... .......... .......... 99% 26.4M 0s
#20 30.09 694950K .......... .......... .......... .......... .......... 99% 25.1M 0s
#20 30.10 695000K .......... .......... .......... .......... .......... 99% 18.7M 0s
#20 30.10 695050K .......... .......... .......... .......... .......... 99% 25.1M 0s
#20 30.10 695100K .......... .......... .......... .......... .......... 99% 24.4M 0s
#20 30.10 695150K .......... .......... .......... .......... .......... 99% 24.3M 0s
#20 30.10 695200K .......... .......... .......... .......... .......... 99% 26.2M 0s
#20 30.11 695250K .......... .......... .......... .......... .......... 99% 19.8M 0s
#20 30.11 695300K .......... .......... .......... .......... .......... 99% 24.6M 0s
#20 30.11 695350K .......... .......... .......... .......... .......... 99% 24.8M 0s
#20 30.11 695400K .......... .......... .......... .......... .......... 99% 25.2M 0s
#20 30.12 695450K .......... .......... .......... .......... .......... 99% 23.8M 0s
#20 30.12 695500K .......... .......... .......... .......... .......... 99% 24.7M 0s
#20 30.12 695550K .......... .......... .......... .......... .......... 99% 25.4M 0s
#20 30.12 695600K .......... .......... .......... .......... .......... 99% 24.2M 0s
#20 30.12 695650K .......... .......... .......... .......... .......... 99% 17.6M 0s
#20 30.13 695700K .......... .......... .......... .......... .......... 99% 25.0M 0s
#20 30.13 695750K .......... .......... .......... .......... .......... 99% 25.8M 0s
#20 30.13 695800K .......... .......... .......... .......... .......... 99% 21.3M 0s
#20 30.13 695850K .......... .......... .......... .......... .......... 99% 24.7M 0s
#20 30.13 695900K .......... .......... .......... .......... .......... 99% 25.1M 0s
#20 30.14 695950K .......... .......... .......... .......... .......... 99% 19.4M 0s
#20 30.14 696000K .......                                               100% 64.6M=30s
#20 30.14 
#20 30.14 2026-01-21 15:15:56 (23.0 MB/s) - 'camoufox.zip' saved [712711368/712711368]
#20 30.14 
#20 30.24 
#20 30.24 7-Zip [64] 16.02 : Copyright (c) 1999-2016 Igor Pavlov : 2016-05-21
#20 30.24 p7zip Version 16.02 (locale=C,Utf16=off,HugeFiles=on,64 bits,4 CPUs LE)
#20 30.24 
#20 30.24 Scanning the drive for archives:
#20 30.24 1 file, 712711368 bytes (680 MiB)
#20 30.24 
#20 30.24 Extracting archive: camoufox.zip
#20 62.42 --
#20 62.42 Path = camoufox.zip
#20 62.42 Type = zip
#20 62.42 Physical Size = 712711368
#20 62.42 
#20 62.43 Everything is Ok
#20 62.43 
#20 62.43 Folders: 19
#20 62.43 Files: 698
#20 62.43 Size:       1321895211
#20 62.43 Compressed: 712711368
#20 DONE 65.6s

#21 [linux/arm64 7/8] COPY unified-server.js black-browser.js models.json ./
#21 DONE 0.0s

#22 [linux/arm64 8/8] RUN mkdir -p ./auth && chown -R node:node /app
#22 DONE 3.8s

#23 exporting to image
#23 exporting layers
#23 exporting layers 69.0s done
#23 ...

#24 [auth] xcq0607/gapi:pull,push token for ghcr.io
#24 DONE 0.0s

#23 exporting to image
#23 exporting manifest sha256:df41978911b7bd25691f1db8fb803c5f97e0e9f4259a3bbd01331b658a850465 done
#23 exporting config sha256:d2ba04458f4d6dacbf716b8d88677a869bbbae42ac0651d3e87b1aab2351582b done
#23 exporting attestation manifest sha256:b1ffd949f81bed2140967f0a0bd5272b9ae32e7afeed9e0089a1a948cf8262ed done
#23 exporting manifest sha256:2694ad9604ba1f2df80a94c2ebb61057fa0d9c313ad05c79541e6c6178d68ec7 done
#23 exporting config sha256:788f89a36c8a2cc8f208a96ac5af230df190199331527f23af384d12df32ebe0 done
#23 exporting attestation manifest sha256:5f547aa279a15280eb11cc969eb0ea9c15be1f13aa7a397174a6b9a5cecce447 done
#23 exporting manifest list sha256:da3c0fbddad806eec95e1333e4fe0cad348d5941bb9f0a2da0d7495cac01f96e done
#23 pushing layers
#23 pushing layers 0.3s done
#23 ERROR: failed to push ghcr.io/xcq0607/gapi:latest: denied: permission_denied: write_package
------
 > exporting to image:
------
ERROR: failed to build: failed to solve: failed to push ghcr.io/xcq0607/gapi:latest: denied: permission_denied: write_package
```

