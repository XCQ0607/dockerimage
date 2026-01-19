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

61 directories, 100 files
```

## 镜像: ros2-dev

### 构建信息
- 目录: ros2-dev/
- 完整镜像名: ghcr.io/xcq0607/ros2-dev:latest
- 构建状态: ❌ 失败
- 构建耗时: 60s

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
#5 extracting sha256:5b3b6a798b5088fee7bc0bfb188bdd445113b407842d17edf502e09f2fc1b536 0.3s done
#5 extracting sha256:ecd839ce83db999d5035a7a3825b0dfa72a58cb764b8a8ea0c500fbed89b583b done
#5 extracting sha256:5a1e1824e50f15537f4e31add7722621bc890f927e27f1505e54da0b51bc4c1b
#5 sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 520.09MB / 810.98MB 4.3s
#5 sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 578.04MB / 810.98MB 4.6s
#5 sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 642.78MB / 810.98MB 5.0s
#5 sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 701.50MB / 810.98MB 5.3s
#5 sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 742.39MB / 810.98MB 5.5s
#5 sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 801.11MB / 810.98MB 5.8s
#5 sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 810.98MB / 810.98MB 6.4s done
#5 extracting sha256:5a1e1824e50f15537f4e31add7722621bc890f927e27f1505e54da0b51bc4c1b 5.0s
#5 extracting sha256:5a1e1824e50f15537f4e31add7722621bc890f927e27f1505e54da0b51bc4c1b 6.8s done
#5 extracting sha256:72dabda1f44ba2f0c461142f451ba75451f7348aa265fbe6a04dd0ff2654448d
#5 extracting sha256:72dabda1f44ba2f0c461142f451ba75451f7348aa265fbe6a04dd0ff2654448d done
#5 extracting sha256:58aaf05f7e4717206bdef277969fefae295f0aeb84ad86377ce147c6e467ce29 0.1s
#5 extracting sha256:58aaf05f7e4717206bdef277969fefae295f0aeb84ad86377ce147c6e467ce29 2.2s done
#5 extracting sha256:d7e9ae4043d817eb2f5f8b33584b61dd9859d8733be7d8c069ae9efe648e3d28
#5 extracting sha256:d7e9ae4043d817eb2f5f8b33584b61dd9859d8733be7d8c069ae9efe648e3d28 done
#5 extracting sha256:f3c9c540e89d0a29bced540968ac923c8677aab6a43d85b536f173a4e668d7a7 done
#5 extracting sha256:d89d0b0792ec60ed6744e3a288f76caa6009884e44c6cd98add8055465bd325c 0.1s
#5 extracting sha256:d89d0b0792ec60ed6744e3a288f76caa6009884e44c6cd98add8055465bd325c 1.2s done
#5 extracting sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c
#5 extracting sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 5.1s
#5 extracting sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 10.4s
#5 extracting sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 15.4s
#5 extracting sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 20.4s
#5 extracting sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 25.5s
#5 extracting sha256:3c1550f451c47aecc9feaebbcb8667811862a6790dbd0d71fd3a1a5549a3810c 27.1s done
#5 extracting sha256:6b0d10a978dbe4580db54f41cd5d3a30f610b33117244b68202c3105ca5aa40d
#5 extracting sha256:6b0d10a978dbe4580db54f41cd5d3a30f610b33117244b68202c3105ca5aa40d 5.0s done
#5 DONE 52.1s

#6 [2/6] RUN apt-get update && apt-get install -y     ros-humble-foxglove-bridge     ros-humble-rmw-cyclonedds-cpp     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-px4-msgs     build-essential     cmake     git     wget     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     && rm -rf /var/lib/apt/lists/*
#6 0.500 Get:1 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
#6 0.514 Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
#6 0.547 Get:3 http://packages.ros.org/ros2/ubuntu jammy InRelease [4682 B]
#6 0.621 Get:4 http://packages.ros.org/ros2/ubuntu jammy/main Sources [1774 kB]
#6 0.787 Get:5 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
#6 0.800 Get:6 http://packages.ros.org/ros2/ubuntu jammy/main amd64 Packages [1741 kB]
#6 0.856 Get:7 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
#6 0.925 Get:8 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [17.5 MB]
#6 1.152 Get:9 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [60.9 kB]
#6 1.299 Get:10 http://archive.ubuntu.com/ubuntu jammy/restricted amd64 Packages [164 kB]
#6 1.300 Get:11 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [266 kB]
#6 1.302 Get:12 http://archive.ubuntu.com/ubuntu jammy/main amd64 Packages [1792 kB]
#6 1.308 Get:13 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [6205 kB]
#6 1.351 Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [6411 kB]
#6 1.412 Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1600 kB]
#6 1.419 Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [69.2 kB]
#6 1.420 Get:17 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [3968 kB]
#6 1.469 Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [83.9 kB]
#6 1.470 Get:19 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [37.2 kB]
#6 1.990 Get:20 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1289 kB]
#6 2.023 Get:21 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [3637 kB]
#6 2.722 Fetched 47.2 MB in 2s (19.4 MB/s)
#6 2.722 Reading package lists...
#6 3.609 Reading package lists...
#6 4.443 Building dependency tree...
#6 4.616 Reading state information...
#6 4.633 E: Unable to locate package ros-humble-px4-msgs
#6 ERROR: process "/bin/sh -c apt-get update && apt-get install -y     ros-humble-foxglove-bridge     ros-humble-rmw-cyclonedds-cpp     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-px4-msgs     build-essential     cmake     git     wget     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     && rm -rf /var/lib/apt/lists/*" did not complete successfully: exit code: 100
------
 > [2/6] RUN apt-get update && apt-get install -y     ros-humble-foxglove-bridge     ros-humble-rmw-cyclonedds-cpp     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-px4-msgs     build-essential     cmake     git     wget     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     && rm -rf /var/lib/apt/lists/*:
1.419 Get:16 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [69.2 kB]
1.420 Get:17 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [3968 kB]
1.469 Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [83.9 kB]
1.470 Get:19 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [37.2 kB]
1.990 Get:20 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [1289 kB]
2.023 Get:21 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [3637 kB]



4.633 E: Unable to locate package ros-humble-px4-msgs
------

 [33m1 warning found (use docker --debug to expand):
[0m - UndefinedVar: Usage of undefined variable '$LD_LIBRARY_PATH' (line 50)
Dockerfile:9
--------------------
   8 |     # 1. 安装基础工具、ROS组件、CycloneDDS
   9 | >>> RUN apt-get update && apt-get install -y \
  10 | >>>     ros-humble-foxglove-bridge \
  11 | >>>     ros-humble-rmw-cyclonedds-cpp \
  12 | >>>     ros-humble-cv-bridge \
  13 | >>>     ros-humble-vision-msgs \
  14 | >>>     ros-humble-px4-msgs \
  15 | >>>     build-essential \
  16 | >>>     cmake \
  17 | >>>     git \
  18 | >>>     wget \
  19 | >>>     nano \
  20 | >>>     tmux \
  21 | >>>     iputils-ping \
  22 | >>>     net-tools \
  23 | >>>     python3-pip \
  24 | >>>     python3-opencv \
  25 | >>>     && rm -rf /var/lib/apt/lists/*
  26 |     
--------------------
ERROR: failed to build: failed to solve: process "/bin/sh -c apt-get update && apt-get install -y     ros-humble-foxglove-bridge     ros-humble-rmw-cyclonedds-cpp     ros-humble-cv-bridge     ros-humble-vision-msgs     ros-humble-px4-msgs     build-essential     cmake     git     wget     nano     tmux     iputils-ping     net-tools     python3-pip     python3-opencv     && rm -rf /var/lib/apt/lists/*" did not complete successfully: exit code: 100
```

