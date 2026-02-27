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
│   └── Dockerfile
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

64 directories, 106 files
```

## 镜像: cli

### 构建信息
- 目录: cli/
- 完整镜像名: ghcr.io/xcq0607/cli:latest
- 架构支持: linux/amd64, linux/arm64
- 构建状态: ✅ 成功
- 构建耗时: 6s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/cli:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-cli ghcr.io/xcq0607/cli:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/cli:latest
```

### 构建日志

```
#0 building with "builder-a875dff2-e1d0-48f2-b513-5d9562d34bd0" instance using docker-container driver

#1 [internal] load build definition from Dockerfile
#1 transferring dockerfile: 147B done
#1 DONE 0.0s

#2 [auth] eceasy/cli-proxy-api:pull token for registry-1.docker.io
#2 DONE 0.0s

#3 [linux/arm64 internal] load metadata for docker.io/eceasy/cli-proxy-api:latest
#3 DONE 0.5s

#4 [linux/amd64 internal] load metadata for docker.io/eceasy/cli-proxy-api:latest
#4 DONE 0.5s

#5 [internal] load .dockerignore
#5 transferring context: 2B done
#5 DONE 0.0s

#6 [linux/arm64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:cf0f4d0f97b0e02289cb8d1dea7c4c2a50d0dfdd390816a700ae64e5217c1205
#6 resolve docker.io/eceasy/cli-proxy-api:latest@sha256:cf0f4d0f97b0e02289cb8d1dea7c4c2a50d0dfdd390816a700ae64e5217c1205 done
#6 DONE 0.0s

#7 [linux/amd64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:cf0f4d0f97b0e02289cb8d1dea7c4c2a50d0dfdd390816a700ae64e5217c1205
#7 resolve docker.io/eceasy/cli-proxy-api:latest@sha256:cf0f4d0f97b0e02289cb8d1dea7c4c2a50d0dfdd390816a700ae64e5217c1205 done
#7 DONE 0.0s

#8 exporting to image
#8 exporting layers done
#8 exporting manifest sha256:bb33039bbd3a3aaa16657414cf7ca61f97acff82db0dabc108541640071a61ef done
#8 exporting config sha256:65239cb2f2159fcc006e3a1c0ce5732d0bf662edbbad60c24429797de4264d23 done
#8 exporting attestation manifest sha256:5c78bc3c3c1cba96f7d44415f10a052769e1d0b4e164a713f44aeaff152c0a71 done
#8 exporting manifest sha256:b15bdd35ac104dbadcbddbaf6162ca19f904888f0b733d574a92dbc32d5a15aa done
#8 exporting config sha256:7617035fb57f3411f48e028e7a2fa1f70a53576031990aec169113db7efdbeff done
#8 exporting attestation manifest sha256:ba0668382f29336f5c5db21cccd7bf8d68cb04214e8d01bc94f556c951920ea2 done
#8 exporting manifest list sha256:d3db97dcd5496dcb833b70ed720d553d1c3a55c8f0ada775c3374ad61db69bf4 done
#8 ...

#9 [auth] xcq0607/cli:pull,push token for ghcr.io
#9 DONE 0.0s

#8 exporting to image
#8 pushing layers
#8 ...

#6 [linux/arm64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:cf0f4d0f97b0e02289cb8d1dea7c4c2a50d0dfdd390816a700ae64e5217c1205
#6 sha256:c13b248e89551c26bf0a78467066b2114d812cbe2e441bb992e87a96462f25a3 470B / 470B 0.0s done
#6 sha256:6ccc5776041e588ea3481b8b937bba6252e151edd0f258e63e8a55ecdec44f57 101B / 101B 0.0s done
#6 DONE 0.1s

#8 exporting to image
#8 ...

#7 [linux/amd64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:cf0f4d0f97b0e02289cb8d1dea7c4c2a50d0dfdd390816a700ae64e5217c1205
#7 sha256:fe07684b16b82247c3539ed86a65ff37a76138ec25d380bd80c869a1a4c73236 3.80MB / 3.80MB 0.1s done
#7 sha256:1fe5c0f439ac13c14cfa522b651efaaa00fdabe2f23df68aa41663fc5e27868f 12.71MB / 12.71MB 0.1s done
#7 DONE 0.2s

#8 exporting to image
#8 ...

#7 [linux/amd64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:cf0f4d0f97b0e02289cb8d1dea7c4c2a50d0dfdd390816a700ae64e5217c1205
#7 sha256:61df85c5b981e3b2cfb233612017a070de1ef7c2e0af38c08352d91d466d21bd 173.42kB / 173.42kB 0.1s done
#7 sha256:850294e1bee125983886029bdb158ed338863c3cd033edfe95b6aa8686c2472a 470B / 470B 0.1s done
#7 sha256:e974a920c3420c5ac2b55eebf033c7647f64f64ef96e9ddd7162b8c2b7124e51 101B / 101B 0.1s done
#7 sha256:fd5403e6a1f7914e97337edde8fe099f0d4b30bf57b55b09e8117237571211c9 4.74kB / 4.74kB 0.0s done
#7 DONE 0.4s

#6 [linux/arm64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:cf0f4d0f97b0e02289cb8d1dea7c4c2a50d0dfdd390816a700ae64e5217c1205
#6 sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1 32B / 32B 0.0s done
#6 sha256:5ee0f77e30ada425173f3ea4a1f2380289a8aa5305f132d2f197f5e4de987063 11.73MB / 11.73MB 0.1s done
#6 sha256:d69d4d41cfe2ee680d6972795e2a1eb9e4dc4ec3b3c5e0797c9ab43bb3726fa7 4.14MB / 4.14MB 0.1s done
#6 sha256:7281ee6b125151178bb2d251278b87651ec8f7c0534f1c95bcdd8b4e7916bbc0 173.42kB / 173.42kB 0.1s done
#6 sha256:821b62c3eb8b45ba316194578d50c8588f52aeed6fab9b5365152f6e5e7cfbb6 4.74kB / 4.74kB 0.1s done
#6 DONE 0.4s

#8 exporting to image
#8 pushing layers 3.7s done
#8 pushing manifest for ghcr.io/xcq0607/cli:latest@sha256:d3db97dcd5496dcb833b70ed720d553d1c3a55c8f0ada775c3374ad61db69bf4
#8 pushing manifest for ghcr.io/xcq0607/cli:latest@sha256:d3db97dcd5496dcb833b70ed720d553d1c3a55c8f0ada775c3374ad61db69bf4 1.3s done
#8 DONE 5.1s
```

