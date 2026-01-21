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
- 构建耗时: 357s

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
#20 33.57 693700K .......... .......... .......... .......... .......... 99% 21.9M 0s
#20 33.57 693750K .......... .......... .......... .......... .......... 99% 21.0M 0s
#20 33.57 693800K .......... .......... .......... .......... .......... 99% 21.1M 0s
#20 33.58 693850K .......... .......... .......... .......... .......... 99% 20.6M 0s
#20 33.58 693900K .......... .......... .......... .......... .......... 99% 15.4M 0s
#20 33.58 693950K .......... .......... .......... .......... .......... 99% 20.6M 0s
#20 33.58 694000K .......... .......... .......... .......... .......... 99% 22.3M 0s
#20 33.59 694050K .......... .......... .......... .......... .......... 99% 23.4M 0s
#20 33.59 694100K .......... .......... .......... .......... .......... 99% 20.4M 0s
#20 33.59 694150K .......... .......... .......... .......... .......... 99% 21.7M 0s
#20 33.59 694200K .......... .......... .......... .......... .......... 99% 22.4M 0s
#20 33.60 694250K .......... .......... .......... .......... .......... 99% 22.9M 0s
#20 33.60 694300K .......... .......... .......... .......... .......... 99% 16.3M 0s
#20 33.60 694350K .......... .......... .......... .......... .......... 99% 20.8M 0s
#20 33.60 694400K .......... .......... .......... .......... .......... 99% 21.4M 0s
#20 33.61 694450K .......... .......... .......... .......... .......... 99% 21.6M 0s
#20 33.61 694500K .......... .......... .......... .......... .......... 99% 22.1M 0s
#20 33.61 694550K .......... .......... .......... .......... .......... 99% 20.0M 0s
#20 33.61 694600K .......... .......... .......... .......... .......... 99% 22.5M 0s
#20 33.61 694650K .......... .......... .......... .......... .......... 99% 22.0M 0s
#20 33.62 694700K .......... .......... .......... .......... .......... 99% 16.4M 0s
#20 33.62 694750K .......... .......... .......... .......... .......... 99% 18.2M 0s
#20 33.62 694800K .......... .......... .......... .......... .......... 99% 18.5M 0s
#20 33.62 694850K .......... .......... .......... .......... .......... 99% 20.2M 0s
#20 33.63 694900K .......... .......... .......... .......... .......... 99% 20.7M 0s
#20 33.63 694950K .......... .......... .......... .......... .......... 99% 22.9M 0s
#20 33.63 695000K .......... .......... .......... .......... .......... 99% 22.8M 0s
#20 33.63 695050K .......... .......... .......... .......... .......... 99% 23.1M 0s
#20 33.64 695100K .......... .......... .......... .......... .......... 99% 17.5M 0s
#20 33.64 695150K .......... .......... .......... .......... .......... 99% 23.1M 0s
#20 33.64 695200K .......... .......... .......... .......... .......... 99% 22.7M 0s
#20 33.64 695250K .......... .......... .......... .......... .......... 99% 20.7M 0s
#20 33.65 695300K .......... .......... .......... .......... .......... 99% 21.2M 0s
#20 33.65 695350K .......... .......... .......... .......... .......... 99% 20.2M 0s
#20 33.65 695400K .......... .......... .......... .......... .......... 99% 23.4M 0s
#20 33.65 695450K .......... .......... .......... .......... .......... 99% 23.7M 0s
#20 33.65 695500K .......... .......... .......... .......... .......... 99% 18.0M 0s
#20 33.66 695550K .......... .......... .......... .......... .......... 99% 22.0M 0s
#20 33.66 695600K .......... .......... .......... .......... .......... 99% 23.4M 0s
#20 33.66 695650K .......... .......... .......... .......... .......... 99% 22.1M 0s
#20 33.66 695700K .......... .......... .......... .......... .......... 99% 22.4M 0s
#20 33.67 695750K .......... .......... .......... .......... .......... 99% 21.8M 0s
#20 33.67 695800K .......... .......... .......... .......... .......... 99% 21.7M 0s
#20 33.67 695850K .......... .......... .......... .......... .......... 99% 23.2M 0s
#20 33.67 695900K .......... .......... .......... .......... .......... 99% 18.7M 0s
#20 33.67 695950K .......... .......... .......... .......... .......... 99% 24.2M 0s
#20 33.68 696000K .......                                               100% 38.3M=33s
#20 33.68 
#20 33.68 2026-01-21 12:34:08 (20.7 MB/s) - 'camoufox.zip' saved [712711368/712711368]
#20 33.68 
#20 33.78 
#20 33.78 7-Zip [64] 16.02 : Copyright (c) 1999-2016 Igor Pavlov : 2016-05-21
#20 33.78 p7zip Version 16.02 (locale=C,Utf16=off,HugeFiles=on,64 bits,4 CPUs LE)
#20 33.78 
#20 33.78 Scanning the drive for archives:
#20 33.78 1 file, 712711368 bytes (680 MiB)
#20 33.78 
#20 33.78 Extracting archive: camoufox.zip
#20 67.14 --
#20 67.14 Path = camoufox.zip
#20 67.14 Type = zip
#20 67.14 Physical Size = 712711368
#20 67.14 
#20 67.15 Everything is Ok
#20 67.15 
#20 67.15 Folders: 19
#20 67.15 Files: 698
#20 67.15 Size:       1321895211
#20 67.15 Compressed: 712711368
#20 DONE 70.2s

#21 [linux/arm64 7/8] COPY unified-server.js black-browser.js models.json ./
#21 DONE 0.0s

#22 [linux/arm64 8/8] RUN mkdir -p ./auth && chown -R node:node /app
#22 DONE 3.9s

#23 exporting to image
#23 exporting layers
#23 exporting layers 69.2s done
#23 exporting manifest sha256:964e882fc7965281645b6cfe020150cdec4b5fdc2c3d732448d00cbb76b2aaa1 done
#23 exporting config sha256:464fa307726a16076585bfd50ef083ed906acf5af07db6b4f9ba7ef2d9dcf3c5 done
#23 exporting attestation manifest sha256:04555e6264218c846e1d548221105e4e1de6c1d9dae064f9df762e9139b1e91b done
#23 exporting manifest sha256:5207a0ce188998c6b990465a594939fec2f5e15e4788dcdc2e0a8017023077f8 done
#23 exporting config sha256:bb015e977e27a4ce391d59abd72baefe0d1b5d820a9a3ddc29021c52f2554043 done
#23 exporting attestation manifest sha256:30e6d8bf81ec3a8ede0cfc61968cb8f4a33a8a529d4d6157a7aef757609d50aa done
#23 exporting manifest list sha256:98c5684bc97cd2d3f62dbed17fba323232877f698c8d72ae2ccec157ee792403 done
#23 pushing layers
#23 ...

#24 [auth] xcq0607/gapi:pull,push token for ghcr.io
#24 DONE 0.0s

#23 exporting to image
#23 pushing layers 0.7s done
#23 ERROR: failed to push ghcr.io/xcq0607/gapi:latest: denied: permission_denied: write_package
------
 > exporting to image:
------
ERROR: failed to build: failed to solve: failed to push ghcr.io/xcq0607/gapi:latest: denied: permission_denied: write_package
```

## 镜像: ros2-ops

### 构建信息
- 目录: ros2-ops/
- 完整镜像名: ghcr.io/xcq0607/ros2-ops:latest
- 架构支持: linux/amd64, linux/arm64
- 构建状态: ❌ 失败
- 构建耗时: 8819s

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
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/multithread
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/multithread/multithread.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_windows.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_posix_nopoll.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_rtems_bsd_net.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_freertos_plus_tcp.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_posix.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/ip.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_rtems_bsd_net.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_posix.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_windows.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_freertos_plus_tcp.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_posix_nopoll.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/custom
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/custom/custom_transport.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/can
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/can/can_transport_posix.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/can/can_transport.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/serial
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/serial/serial_transport_platform.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/serial/serial_transport_rtems_bsd_net.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/serial/serial_transport.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/serial/serial_transport_posix.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/stream_framing
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/transport/stream_framing/stream_framing_protocol.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/discovery
#15 8527.6 -- Installing: /usr/local/include/uxr/client/profile/discovery/discovery.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/client.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/communication
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/communication/communication.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/create_entities_ref.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/session.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/session_info.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/create_entities_bin.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/write_access.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/stream
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/stream/stream_storage.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/stream/output_reliable_stream.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/stream/seq_num.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/stream/reliable_stream.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/stream/output_best_effort_stream.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/stream/input_reliable_stream.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/stream/stream_id.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/stream/input_best_effort_stream.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/common_create_entities.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/read_access.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/create_entities_xml.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/time_sync.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/session/object_id.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/type
#15 8527.6 -- Installing: /usr/local/include/uxr/client/core/type/xrce_types.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/util
#15 8527.6 -- Installing: /usr/local/include/uxr/client/util/ping.h
#15 8527.6 -- Installing: /usr/local/include/uxr/client/util/time.h
#15 8527.6 -- Up-to-date: /usr/local/share
#15 8527.6 -- Installing: /usr/local/share/microxrcedds_client
#15 8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake
#15 8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientTargets-release.cmake
#15 8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientConfig.cmake
#15 8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientTargets.cmake
#15 8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientConfigVersion.cmake
#15 8527.7 qemu: uncaught target signal 11 (Segmentation fault) - core dumped
#15 8528.1 Segmentation fault (core dumped)
#15 ERROR: process "/bin/sh -c git clone https://github.com/eProsima/Micro-XRCE-DDS-Agent.git &&     cd Micro-XRCE-DDS-Agent &&     mkdir build && cd build &&     cmake .. &&     make &&     make install &&     ldconfig /usr/local/lib/ &&     rm -rf /tmp/Micro-XRCE-DDS-Agent" did not complete successfully: exit code: 139
------
 > [linux/arm64 5/9] RUN git clone https://github.com/eProsima/Micro-XRCE-DDS-Agent.git &&     cd Micro-XRCE-DDS-Agent &&     mkdir build && cd build &&     cmake .. &&     make &&     make install &&     ldconfig /usr/local/lib/ &&     rm -rf /tmp/Micro-XRCE-DDS-Agent:
8527.6 -- Installing: /usr/local/include/uxr/client/util/time.h
8527.6 -- Up-to-date: /usr/local/share
8527.6 -- Installing: /usr/local/share/microxrcedds_client
8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake
8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientTargets-release.cmake
8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientConfig.cmake
8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientTargets.cmake
8527.6 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientConfigVersion.cmake
8527.7 qemu: uncaught target signal 11 (Segmentation fault) - core dumped
8528.1 Segmentation fault (core dumped)
------
Dockerfile:34
--------------------
  33 |     WORKDIR /tmp
  34 | >>> RUN git clone https://github.com/eProsima/Micro-XRCE-DDS-Agent.git && \
  35 | >>>     cd Micro-XRCE-DDS-Agent && \
  36 | >>>     mkdir build && cd build && \
  37 | >>>     cmake .. && \
  38 | >>>     make && \
  39 | >>>     make install && \
  40 | >>>     ldconfig /usr/local/lib/ && \
  41 | >>>     rm -rf /tmp/Micro-XRCE-DDS-Agent
  42 |     
--------------------
ERROR: failed to build: failed to solve: process "/bin/sh -c git clone https://github.com/eProsima/Micro-XRCE-DDS-Agent.git &&     cd Micro-XRCE-DDS-Agent &&     mkdir build && cd build &&     cmake .. &&     make &&     make install &&     ldconfig /usr/local/lib/ &&     rm -rf /tmp/Micro-XRCE-DDS-Agent" did not complete successfully: exit code: 139
```

