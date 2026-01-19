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
│   └── Dockerfile
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

62 directories, 102 files
```

## 镜像: ros2-dev

### 构建信息
- 目录: ros2-dev/
- 完整镜像名: ghcr.io/xcq0607/ros2-dev:latest
- 架构支持: linux/amd64, linux/arm64
- 构建状态: ✅ 成功
- 构建耗时: 836s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/ros2-dev:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-ros2-dev ghcr.io/xcq0607/ros2-dev:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/ros2-dev:latest
```

### 构建日志

```
#15 767.2 -- Installing: /usr/local/include/uxr/client/transport.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/visibility.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/defines.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/config.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/multithread
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/multithread/multithread.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_windows.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_posix_nopoll.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_rtems_bsd_net.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_freertos_plus_tcp.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/udp/udp_transport_posix.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/ip.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_rtems_bsd_net.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_posix.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_windows.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_freertos_plus_tcp.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/ip/tcp/tcp_transport_posix_nopoll.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/custom
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/custom/custom_transport.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/can
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/can/can_transport_posix.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/can/can_transport.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/serial
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/serial/serial_transport_platform.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/serial/serial_transport_rtems_bsd_net.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/serial/serial_transport.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/serial/serial_transport_posix.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/stream_framing
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/transport/stream_framing/stream_framing_protocol.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/discovery
#15 767.2 -- Installing: /usr/local/include/uxr/client/profile/discovery/discovery.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/client.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/communication
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/communication/communication.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/create_entities_ref.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/session.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/session_info.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/create_entities_bin.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/write_access.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/stream
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/stream/stream_storage.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/stream/output_reliable_stream.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/stream/seq_num.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/stream/reliable_stream.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/stream/output_best_effort_stream.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/stream/input_reliable_stream.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/stream/stream_id.h
#15 767.2 -- Installing: /usr/local/include/uxr/client/core/session/stream/input_best_effort_stream.h
#15 767.3 -- Installing: /usr/local/include/uxr/client/core/session/common_create_entities.h
#15 767.3 -- Installing: /usr/local/include/uxr/client/core/session/read_access.h
#15 767.3 -- Installing: /usr/local/include/uxr/client/core/session/create_entities_xml.h
#15 767.3 -- Installing: /usr/local/include/uxr/client/core/session/time_sync.h
#15 767.3 -- Installing: /usr/local/include/uxr/client/core/session/object_id.h
#15 767.3 -- Installing: /usr/local/include/uxr/client/core/type
#15 767.3 -- Installing: /usr/local/include/uxr/client/core/type/xrce_types.h
#15 767.3 -- Installing: /usr/local/include/uxr/client/util
#15 767.3 -- Installing: /usr/local/include/uxr/client/util/ping.h
#15 767.3 -- Installing: /usr/local/include/uxr/client/util/time.h
#15 767.3 -- Up-to-date: /usr/local/share
#15 767.3 -- Installing: /usr/local/share/microxrcedds_client
#15 767.3 -- Installing: /usr/local/share/microxrcedds_client/cmake
#15 767.3 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientTargets-release.cmake
#15 767.3 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientConfig.cmake
#15 767.3 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientTargets.cmake
#15 767.3 -- Installing: /usr/local/share/microxrcedds_client/cmake/microxrcedds_clientConfigVersion.cmake
#15 DONE 767.8s

#17 [linux/arm64 6/6] WORKDIR /home/ros2/workspace
#17 DONE 0.0s

#18 exporting to image
#18 exporting layers
#18 exporting layers 3.2s done
#18 exporting manifest sha256:a725d4b32830fd4a3e1863574a7e5b18b5d2e17b5615fd88c0fc10cc9310f039 done
#18 exporting config sha256:94a9e0018b7d31e58d51ec1fa9b085073b25ec1d1ad55824d18eadcc9fccfd9c done
#18 exporting attestation manifest sha256:53989cbcfa1fd27adbfb8ed9b43a8580ca44b146a59be41de9f37e7644b95e5e done
#18 exporting manifest sha256:f578de9564a5d57ce08332a5ae97ebc049b418dcc17fdb207af1091373da3a54 done
#18 exporting config sha256:9ca5eb2b6d99439051210b0e9f4a5a5a4f5071e1c1f0e9c765a793c7e9c2ae47 done
#18 exporting attestation manifest sha256:3fa4c509859a2a7cc9564f4a84dbeea986cf5093a9c7d2c48826658b094be802 done
#18 exporting manifest list sha256:dc2b0e55be250d29e315b6c4d6aa12f1c28778f421ab3e1b1a8110e0d625f952 done
#18 pushing layers
#18 ...

#19 [auth] xcq0607/ros2-dev:pull,push token for ghcr.io
#19 DONE 0.0s

#18 exporting to image
#18 pushing layers 6.7s done
#18 pushing manifest for ghcr.io/xcq0607/ros2-dev:latest@sha256:dc2b0e55be250d29e315b6c4d6aa12f1c28778f421ab3e1b1a8110e0d625f952
#18 pushing manifest for ghcr.io/xcq0607/ros2-dev:latest@sha256:dc2b0e55be250d29e315b6c4d6aa12f1c28778f421ab3e1b1a8110e0d625f952 2.3s done
#18 DONE 12.2s
```

