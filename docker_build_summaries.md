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
├── cliproxyapi
│   └── Dockerfile
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

63 directories, 104 files
```

## 镜像: cliproxyapi

### 构建信息
- 目录: cliproxyapi/
- 完整镜像名: ghcr.io/xcq0607/cliproxyapi:latest
- 架构支持: linux/amd64, linux/arm64
- 构建状态: ✅ 成功
- 构建耗时: 12s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/cliproxyapi:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-cliproxyapi ghcr.io/xcq0607/cliproxyapi:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/cliproxyapi:latest
```

### 构建日志

```
#2 [linux/arm64 internal] load metadata for docker.io/eceasy/cli-proxy-api:latest
#2 ...

#3 [auth] eceasy/cli-proxy-api:pull token for registry-1.docker.io
#3 DONE 0.0s

#4 [linux/amd64 internal] load metadata for docker.io/eceasy/cli-proxy-api:latest
#4 DONE 1.0s

#2 [linux/arm64 internal] load metadata for docker.io/eceasy/cli-proxy-api:latest
#2 DONE 1.0s

#5 [internal] load .dockerignore
#5 transferring context: 2B done
#5 DONE 0.0s

#6 [linux/amd64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#6 resolve docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9 done
#6 DONE 0.0s

#7 [linux/arm64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#7 resolve docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9 done
#7 DONE 0.0s

#8 exporting to image
#8 exporting layers done
#8 exporting manifest sha256:5c66a11ace6893eabd25f98849822f67b82c231bd98551b7731facd14a182d86 done
#8 exporting config sha256:25ad338f59f36f438778b313b24e84df3b689885605214ddf4e583124ebcb753 done
#8 exporting attestation manifest sha256:65381b28daabd11a534b750b83e23fbd499b5ea35d531ffdcbf5ba4f72ab902a done
#8 exporting manifest sha256:43736351272f0cb2167004f6fa78e31b339d481aebea81a5a961bc4bdacfe533 done
#8 exporting config sha256:da1908a7051f78a753ab3c0f26bbee0849ac64d066ad2894f2a54e7136c6f8c5 done
#8 exporting attestation manifest sha256:9723c246502a8c56f330858c5e092c6b53b810c819d1334fe354f5695dc2d44e done
#8 exporting manifest list sha256:9c5a6d11c83d4a5fc4e12e927727d300e8a4ab909c7e62edfb982560711c7e01 done
#8 pushing layers
#8 ...

#9 [auth] xcq0607/cliproxyapi:pull,push token for ghcr.io
#9 DONE 0.0s

#8 exporting to image
#8 ...

#7 [linux/arm64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#7 sha256:efd8dc0b461326b7a30f3410a3571dbf150ec6cded38e4f7f550d8b51eec1bfe 4.56kB / 4.56kB 0.1s done
#7 sha256:de60d522ecbe4a48d360bd46cef3e122c6279915f07d1f9f4cf1a2053fb1e32b 470B / 470B 0.1s done
#7 DONE 0.2s

#6 [linux/amd64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#6 sha256:c3c756a3b3960cbccc1cb662093e9a062dd4989d1c30bd30406af89a5fcb66d4 470B / 470B 0.1s done
#6 DONE 0.1s

#8 exporting to image
#8 ...

#6 [linux/amd64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#6 sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1 32B / 32B 0.1s done
#6 DONE 0.3s

#8 exporting to image
#8 ...

#6 [linux/amd64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#6 sha256:7fc6002dac43f8ec73f7a71d0ae31c1949104b8941a0fd84d38717802b949984 173.41kB / 173.41kB 0.1s done
#6 DONE 0.4s

#6 [linux/amd64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#6 sha256:fe07684b16b82247c3539ed86a65ff37a76138ec25d380bd80c869a1a4c73236 3.80MB / 3.80MB 0.1s done
#6 sha256:23b597b95ef3466cbcd42676b9ee1a6c785d7f511937a00f66661b3421a587e7 101B / 101B 0.1s done
#6 sha256:7d600f59b9ebd463fd88c5f22af67422979c60dbb646c900076da1fd557eb27e 12.03MB / 12.03MB 0.2s done
#6 DONE 0.7s

#8 exporting to image
#8 ...

#7 [linux/arm64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#7 sha256:d69d4d41cfe2ee680d6972795e2a1eb9e4dc4ec3b3c5e0797c9ab43bb3726fa7 4.14MB / 4.14MB 0.1s done
#7 DONE 0.3s

#6 [linux/amd64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#6 sha256:090e56440687c6a79631205072bedb38cf2558f5ff9d3753758c4ad78fafccca 4.56kB / 4.56kB 0.1s done
#6 DONE 0.8s

#7 [linux/arm64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#7 sha256:169a254607f3b9e0db1323db199f8ccdd889fe530e9b4ec3dc0fe0f73e97b8fe 173.41kB / 173.41kB 0.1s done
#7 DONE 0.4s

#8 exporting to image
#8 ...

#7 [linux/arm64 1/1] FROM docker.io/eceasy/cli-proxy-api:latest@sha256:ebce8efa2118b734543fc8bfdcc9c5d55015fe9f9867ac20e7b4a3f1503292a9
#7 sha256:9d897edb1e8ce3d30004f79d97b65a111c2f1563d71b00582ca96d91c8285535 101B / 101B 0.1s done
#7 sha256:fa8a91493f222c3dbb17b72c7c53f08305a3f651e6a5c7481752eb5d4d678d8b 9.44MB / 11.23MB 0.2s
#7 sha256:fa8a91493f222c3dbb17b72c7c53f08305a3f651e6a5c7481752eb5d4d678d8b 11.23MB / 11.23MB 0.2s done
#7 DONE 0.7s

#8 exporting to image
#8 pushing layers 7.8s done
#8 pushing manifest for ghcr.io/xcq0607/cliproxyapi:latest@sha256:9c5a6d11c83d4a5fc4e12e927727d300e8a4ab909c7e62edfb982560711c7e01
#8 pushing manifest for ghcr.io/xcq0607/cliproxyapi:latest@sha256:9c5a6d11c83d4a5fc4e12e927727d300e8a4ab909c7e62edfb982560711c7e01 2.5s done
#8 DONE 10.4s
```

