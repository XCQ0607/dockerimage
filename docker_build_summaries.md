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

57 directories, 82 files
```

## 镜像: gapi

### 构建信息
- 目录: gapi/
- 完整镜像名: ghcr.io/xcq0607/gapi:latest
- 构建状态: ❌ 失败
- 构建耗时: 49s

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
#11 18.80 693600K .......... .......... .......... .......... .......... 99%  184M 0s
#11 18.80 693650K .......... .......... .......... .......... .......... 99%  222M 0s
#11 18.80 693700K .......... .......... .......... .......... .......... 99%  166M 0s
#11 18.80 693750K .......... .......... .......... .......... .......... 99%  181M 0s
#11 18.80 693800K .......... .......... .......... .......... .......... 99%  213M 0s
#11 18.80 693850K .......... .......... .......... .......... .......... 99%  241M 0s
#11 18.80 693900K .......... .......... .......... .......... .......... 99%  239M 0s
#11 18.80 693950K .......... .......... .......... .......... .......... 99%  189M 0s
#11 18.80 694000K .......... .......... .......... .......... .......... 99%  235M 0s
#11 18.80 694050K .......... .......... .......... .......... .......... 99%  233M 0s
#11 18.80 694100K .......... .......... .......... .......... .......... 99%  243M 0s
#11 18.80 694150K .......... .......... .......... .......... .......... 99%  182M 0s
#11 18.80 694200K .......... .......... .......... .......... .......... 99%  227M 0s
#11 18.80 694250K .......... .......... .......... .......... .......... 99%  246M 0s
#11 18.80 694300K .......... .......... .......... .......... .......... 99%  232M 0s
#11 18.80 694350K .......... .......... .......... .......... .......... 99%  196M 0s
#11 18.80 694400K .......... .......... .......... .......... .......... 99%  215M 0s
#11 18.80 694450K .......... .......... .......... .......... .......... 99%  237M 0s
#11 18.80 694500K .......... .......... .......... .......... .......... 99%  232M 0s
#11 18.80 694550K .......... .......... .......... .......... .......... 99%  208M 0s
#11 18.80 694600K .......... .......... .......... .......... .......... 99%  226M 0s
#11 18.80 694650K .......... .......... .......... .......... .......... 99%  233M 0s
#11 18.80 694700K .......... .......... .......... .......... .......... 99%  245M 0s
#11 18.80 694750K .......... .......... .......... .......... .......... 99%  196M 0s
#11 18.80 694800K .......... .......... .......... .......... .......... 99%  228M 0s
#11 18.80 694850K .......... .......... .......... .......... .......... 99%  227M 0s
#11 18.80 694900K .......... .......... .......... .......... .......... 99%  238M 0s
#11 18.80 694950K .......... .......... .......... .......... .......... 99%  219M 0s
#11 18.80 695000K .......... .......... .......... .......... .......... 99%  241M 0s
#11 18.80 695050K .......... .......... .......... .......... .......... 99%  202M 0s
#11 18.80 695100K .......... .......... .......... .......... .......... 99%  243M 0s
#11 18.80 695150K .......... .......... .......... .......... .......... 99%  197M 0s
#11 18.80 695200K .......... .......... .......... .......... .......... 99%  243M 0s
#11 18.80 695250K .......... .......... .......... .......... .......... 99%  231M 0s
#11 18.80 695300K .......... .......... .......... .......... .......... 99%  217M 0s
#11 18.80 695350K .......... .......... .......... .......... .......... 99%  221M 0s
#11 18.80 695400K .......... .......... .......... .......... .......... 99%  242M 0s
#11 18.80 695450K .......... .......... .......... .......... .......... 99%  239M 0s
#11 18.80 695500K .......... .......... .......... .......... .......... 99%  246M 0s
#11 18.80 695550K .......... .......... .......... .......... .......... 99%  192M 0s
#11 18.80 695600K .......... .......... .......... .......... .......... 99%  249M 0s
#11 18.80 695650K .......... .......... .......... .......... .......... 99%  242M 0s
#11 18.80 695700K .......... .......... .......... .......... .......... 99%  248M 0s
#11 18.80 695750K .......... .......... .......... .......... .......... 99%  197M 0s
#11 18.80 695800K .......... .......... .......... .......... .......... 99%  243M 0s
#11 18.80 695850K .......... .......... .......... .......... .......... 99%  240M 0s
#11 18.80 695900K .......... .......... .......... .......... .......... 99%  204M 0s
#11 18.80 695950K .......... .......... .......... .......... .......... 99%  241M 0s
#11 18.80 696000K .......                                               100%  162M=4.0s
#11 18.80 
#11 18.80 2025-11-29 16:28:37 (170 MB/s) - 'camoufox.zip' saved [712711368/712711368]
#11 18.80 
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U4e38#U30b3#U3099 ProN W4.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ丸ゴ ProN W4.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U660e#U671d ProN.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ明朝 ProN.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W0.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W0.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W1.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W1.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W2.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W2.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W3.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W3.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W4.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W4.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W5.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W5.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W6.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W6.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W7.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W7.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W8.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W8.ttc),
#11 18.80          continuing with "central" filename version
#11 18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W9.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W9.ttc),
#11 18.80          continuing with "central" filename version
#11 ERROR: process "/bin/sh -c wget -O camoufox.zip \"https://github.com/daijro/camoufox/releases/download/v${CAMOUFOX_VERSION}/camoufox-${CAMOUFOX_VERSION}-lin.x86_64.zip\" &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox" did not complete successfully: exit code: 1
------
 > [6/8] RUN wget -O camoufox.zip "https://github.com/daijro/camoufox/releases/download/v135.0.1-beta.24/camoufox-135.0.1-beta.24-lin.x86_64.zip" &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox:
18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W5.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W5.ttc),
18.80          continuing with "central" filename version
18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W6.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W6.ttc),
18.80          continuing with "central" filename version
18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W7.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W7.ttc),
18.80          continuing with "central" filename version
18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W8.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W8.ttc),
18.80          continuing with "central" filename version
18.80 fonts/macos/#U30d2#U30e9#U30ad#U3099#U30ce#U89d2#U30b3#U3099#U30b7#U30c3#U30af W9.ttc:  mismatching "local" filename (fonts/macos/ヒラギノ角ゴシック W9.ttc),
18.80          continuing with "central" filename version
------
Dockerfile:22
--------------------
  21 |     ARG CAMOUFOX_VERSION=135.0.1-beta.24
  22 | >>> RUN wget -O camoufox.zip "https://github.com/daijro/camoufox/releases/download/v${CAMOUFOX_VERSION}/camoufox-${CAMOUFOX_VERSION}-lin.x86_64.zip" && \
  23 | >>>     unzip camoufox.zip && \
  24 | >>>     rm camoufox.zip && \
  25 | >>>     chmod +x /app/camoufox/camoufox
  26 |     
--------------------
ERROR: failed to build: failed to solve: process "/bin/sh -c wget -O camoufox.zip \"https://github.com/daijro/camoufox/releases/download/v${CAMOUFOX_VERSION}/camoufox-${CAMOUFOX_VERSION}-lin.x86_64.zip\" &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox" did not complete successfully: exit code: 1
```

