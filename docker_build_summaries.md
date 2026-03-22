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
- 构建耗时: 237s

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
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/gstreamer-1.0/libgstnvcompositor.so is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/nvidia/weston/libilmInput.so.2.2.0 is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/nvidia/weston/libilmControl.so.2.2.0 is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/nvidia/weston/libilmCommon.so.2.2.0 is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/nvidia/weston/libilmClient.so.2.2.0 is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/nvidia/weston/libweston-6.so.0 is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/nvidia/weston/libweston-desktop-6.so.0 is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/tegra-egl/libGLESv2_nvidia.so.2 is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/tegra-egl/libEGL_nvidia.so.0 is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/tegra-egl/libGLESv1_CM_nvidia.so.1 is empty, not checked.
#9 71.53 /sbin/ldconfig.real: File /usr/lib/aarch64-linux-gnu/tegra-egl/ld.so.conf is empty, not checked.
#9 DONE 73.4s

#10 [linux/arm64  3/15] RUN apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*
#10 ...

#11 [linux/amd64  3/15] RUN apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*
#11 0.994 Get:1 http://packages.ros.org/ros2/ubuntu jammy InRelease [4,682 B]
#11 1.301 Hit:2 http://ports.ubuntu.com/ubuntu-ports jammy InRelease
#11 1.415 Hit:3 http://ports.ubuntu.com/ubuntu-ports jammy-updates InRelease
#11 1.528 Hit:4 http://ports.ubuntu.com/ubuntu-ports jammy-backports InRelease
#11 1.642 Hit:5 http://ports.ubuntu.com/ubuntu-ports jammy-security InRelease
#11 2.640 Get:6 http://packages.ros.org/ros2/ubuntu jammy/main arm64 Packages [1,719 kB]
#11 ...

#10 [linux/arm64  3/15] RUN apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*
#10 6.950 Get:6 http://packages.ros.org/ros2/ubuntu jammy/main arm64 Packages [1,719 kB]
#10 11.56 Fetched 1,724 kB in 11s (162 kB/s)
#10 11.56 Reading package lists...
#10 ...

#11 [linux/amd64  3/15] RUN apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*
#11 11.23 Fetched 1,724 kB in 10s (168 kB/s)
#11 11.23 Reading package lists...
#11 ...

#10 [linux/arm64  3/15] RUN apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*
#10 11.56 Reading package lists...
#10 25.42 Reading package lists...
#10 ...

#11 [linux/amd64  3/15] RUN apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*
#11 11.23 Reading package lists...
#11 25.04 Reading package lists...
#11 ...

#10 [linux/arm64  3/15] RUN apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*
#10 25.42 Reading package lists...
#10 38.85 Building dependency tree...
#10 40.10 Reading state information...
#10 40.15 E: Unable to locate package ros-humble-foxglove-bridge
#10 ERROR: process "/bin/sh -c apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*" did not complete successfully: exit code: 100

#11 [linux/amd64  3/15] RUN apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*
#11 25.04 Reading package lists...
#11 CANCELED
------
 > [linux/arm64  3/15] RUN apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*:
1.368 Hit:1 http://ports.ubuntu.com/ubuntu-ports jammy InRelease
1.374 Hit:2 http://ports.ubuntu.com/ubuntu-ports jammy-updates InRelease
1.467 Get:3 http://packages.ros.org/ros2/ubuntu jammy InRelease [4,682 B]
1.486 Hit:4 http://ports.ubuntu.com/ubuntu-ports jammy-backports InRelease
1.597 Hit:5 http://ports.ubuntu.com/ubuntu-ports jammy-security InRelease
11.56 Reading package lists...
25.42 Reading package lists...

40.15 E: Unable to locate package ros-humble-foxglove-bridge
------

 [33m1 warning found (use docker --debug to expand):
[0m - InvalidBaseImagePlatform: Base image dustynv/l4t-pytorch:r36.2.0 was pulled with platform "linux/arm64", expected "linux/amd64" for current build (line 7)
Dockerfile:23
--------------------
  22 |     # 1. 安装基础编译工具和 ROS 通信/传感器组件 (核心装上 ros-humble-ros-base)
  23 | >>> RUN apt-get update && apt-get install -y \
  24 | >>>     ros-humble-ros-base \
  25 | >>>     ros-humble-rmw-cyclonedds-cpp \
  26 | >>>     ros-humble-foxglove-bridge \
  27 | >>>     ros-humble-cv-bridge \
  28 | >>>     ros-humble-vision-msgs \
  29 | >>>     ros-humble-actuator-msgs \
  30 | >>>     ros-humble-gps-msgs \
  31 | >>>     ros-humble-robot-localization \
  32 | >>>     build-essential \
  33 | >>>     cmake \
  34 | >>>     git \
  35 | >>>     nano \
  36 | >>>     tmux \
  37 | >>>     iputils-ping \
  38 | >>>     net-tools \
  39 | >>>     python3-pip \
  40 | >>>     python3-opencv \
  41 | >>>     sudo \
  42 | >>>     libopenblas-dev \
  43 | >>>     python3-colcon-common-extensions \
  44 | >>>     python3-rosdep \
  45 | >>>     && rm -rf /var/lib/apt/lists/*
  46 |     
--------------------
ERROR: failed to build: failed to solve: process "/bin/sh -c apt-get update && apt-get install -y     ros-humble-ros-base     ros-humble-rmw-cyclonedds-cpp     ros-humble-foxglove-bridge     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-actuator-msgs     ros-humble-gps-msgs     ros-humble-robot-localization     build-essential     cmake     git     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     sudo     libopenblas-dev     python3-colcon-common-extensions     python3-rosdep     && rm -rf /var/lib/apt/lists/*" did not complete successfully: exit code: 100
```

