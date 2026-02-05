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

## 镜像: ros2-ops

### 构建信息
- 目录: ros2-ops/
- 完整镜像名: ghcr.io/xcq0607/ros2-ops:latest
- 架构支持: linux/amd64, linux/arm64
- 构建状态: ✅ 成功
- 构建耗时: 9030s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/ros2-ops:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-ros2-ops ghcr.io/xcq0607/ros2-ops:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/ros2-ops:latest
```

### 构建日志

```
#15 8654.0 -- Installing: /usr/local/include/uxr/client/client.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/communication
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/communication/communication.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/create_entities_ref.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/session.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/session_info.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/create_entities_bin.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/write_access.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/stream
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/stream/stream_storage.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/stream/output_reliable_stream.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/stream/seq_num.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/stream/reliable_stream.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/stream/output_best_effort_stream.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/stream/input_reliable_stream.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/stream/stream_id.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/stream/input_best_effort_stream.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/common_create_entities.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/read_access.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/create_entities_xml.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/time_sync.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/session/object_id.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/type
#15 8654.0 -- Installing: /usr/local/include/uxr/client/core/type/xrce_types.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/util
#15 8654.0 -- Installing: /usr/local/include/uxr/client/util/ping.h
#15 8654.0 -- Installing: /usr/local/include/uxr/client/util/time.h
#15 8654.0 -- Up-to-date: /usr/local/share
#15 8654.0 -- Installing: /usr/local/share/microxrcedds_client
#15 8654.0 -- Installing: /usr/local/share/microxrcedds_client/cmake
#15 8654.0 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientTargets-release.cmake
#15 8654.0 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientConfig.cmake
#15 8654.0 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientTargets.cmake
#15 8654.0 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientConfigVersion.cmake
#15 DONE 8654.8s

#20 [linux/arm64 6/9] RUN groupadd --gid 1000 jetson     && useradd --uid 1000 --gid 1000 -m jetson     && apt-get update     && apt-get install -y sudo     && echo jetson ALL=(root) NOPASSWD:ALL > /etc/sudoers.d/jetson     && chmod 0440 /etc/sudoers.d/jetson
#20 0.844 Get:1 http://packages.ros.org/ros2/ubuntu jammy InRelease [4682 B]
#20 1.247 Get:2 http://ports.ubuntu.com/ubuntu-ports jammy InRelease [270 kB]
#20 2.138 Get:3 http://ports.ubuntu.com/ubuntu-ports jammy-updates InRelease [128 kB]
#20 2.245 Get:4 http://packages.ros.org/ros2/ubuntu jammy/main Sources [1774 kB]
#20 2.356 Get:5 http://ports.ubuntu.com/ubuntu-ports jammy-backports InRelease [127 kB]
#20 2.656 Get:6 http://ports.ubuntu.com/ubuntu-ports jammy-security InRelease [129 kB]
#20 2.678 Get:7 http://packages.ros.org/ros2/ubuntu jammy/main arm64 Packages [1698 kB]
#20 4.357 Get:8 http://ports.ubuntu.com/ubuntu-ports jammy/universe arm64 Packages [17.2 MB]
#20 5.681 Get:9 http://ports.ubuntu.com/ubuntu-ports jammy/main arm64 Packages [1758 kB]
#20 5.731 Get:10 http://ports.ubuntu.com/ubuntu-ports jammy/multiverse arm64 Packages [224 kB]
#20 5.740 Get:11 http://ports.ubuntu.com/ubuntu-ports jammy/restricted arm64 Packages [24.2 kB]
#20 6.313 Get:12 http://ports.ubuntu.com/ubuntu-ports jammy-updates/main arm64 Packages [3761 kB]
#20 6.634 Get:13 http://ports.ubuntu.com/ubuntu-ports jammy-updates/restricted arm64 Packages [6313 kB]
#20 6.924 Get:14 http://ports.ubuntu.com/ubuntu-ports jammy-updates/universe arm64 Packages [1644 kB]
#20 6.992 Get:15 http://ports.ubuntu.com/ubuntu-ports jammy-updates/multiverse arm64 Packages [47.7 kB]
#20 8.272 Get:16 http://ports.ubuntu.com/ubuntu-ports jammy-backports/universe arm64 Packages [35.3 kB]
#20 8.437 Get:17 http://ports.ubuntu.com/ubuntu-ports jammy-backports/main arm64 Packages [83.5 kB]
#20 10.16 Get:18 http://ports.ubuntu.com/ubuntu-ports jammy-security/main arm64 Packages [3443 kB]
#20 10.44 Get:19 http://ports.ubuntu.com/ubuntu-ports jammy-security/restricted arm64 Packages [6121 kB]
#20 10.66 Get:20 http://ports.ubuntu.com/ubuntu-ports jammy-security/multiverse arm64 Packages [41.2 kB]
#20 10.66 Get:21 http://ports.ubuntu.com/ubuntu-ports jammy-security/universe arm64 Packages [1341 kB]
#20 14.73 Fetched 46.2 MB in 14s (3282 kB/s)
#20 14.73 Reading package lists...
#20 27.85 Reading package lists...
#20 40.15 Building dependency tree...
#20 41.33 Reading state information...
#20 42.25 sudo is already the newest version (1.9.9-1ubuntu2.5).
#20 42.25 sudo set to manually installed.
#20 42.25 0 upgraded, 0 newly installed, 0 to remove and 20 not upgraded.
#20 DONE 42.3s

#21 [linux/arm64 7/9] RUN echo "source /opt/ros/humble/setup.bash" >> /home/jetson/.bashrc
#21 DONE 0.1s

#22 [linux/arm64 8/9] WORKDIR /home/jetson/workspace
#22 DONE 0.0s

#23 [linux/arm64 9/9] RUN chown -R jetson:jetson /home/jetson
#23 DONE 0.1s

#24 exporting to image
#24 exporting layers
#24 exporting layers 31.3s done
#24 exporting manifest sha256:ea661fcb0ebeac35eed8bf8504eb3dc3794283960282fcab63503597b489b66c done
#24 exporting config sha256:a77b924d728c2056d4130ce6db838bee0590a6483d2dea3c94505b8c6ac3a5a0 done
#24 exporting attestation manifest sha256:be319441d6065fd04141528ff66a1932a703d4d24d3234c773742de710bcd72c done
#24 exporting manifest sha256:96de53ce47d583569cd678ea210f8131d5317ec6950771907193fd06e6761314 done
#24 exporting config sha256:3ff304d29f47c8ffa199b9bf4ebbb6285d19f720e10501e5dcba905b7a9fca2b done
#24 exporting attestation manifest sha256:6e48ad695d076dddad9485b079958fef29f4f174fb92151784a879a8c943eead done
#24 exporting manifest list sha256:e950cff8b46747938bba0e39af2ad62ddb7b174269b3619f77d68d33d0ef57b8 done
#24 pushing layers
#24 ...

#25 [auth] xcq0607/ros2-ops:pull,push token for ghcr.io
#25 DONE 0.0s

#24 exporting to image
#24 pushing layers 12.6s done
#24 pushing manifest for ghcr.io/xcq0607/ros2-ops:latest@sha256:e950cff8b46747938bba0e39af2ad62ddb7b174269b3619f77d68d33d0ef57b8
#24 pushing manifest for ghcr.io/xcq0607/ros2-ops:latest@sha256:e950cff8b46747938bba0e39af2ad62ddb7b174269b3619f77d68d33d0ef57b8 2.5s done
#24 DONE 46.5s
```

