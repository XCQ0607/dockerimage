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
- 构建耗时: 32s

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
#8 19.84 Setting up libdrm-radeon1:amd64 (2.4.114-1+b1) ...
#8 19.84 Setting up libpango-1.0-0:amd64 (1.50.12+ds-1) ...
#8 19.85 Setting up libdrm-intel1:amd64 (2.4.114-1+b1) ...
#8 19.85 Setting up libgl1-mesa-dri:amd64 (22.3.6-1+deb12u1) ...
#8 19.86 Setting up libxext6:amd64 (2:1.3.4-1+b1) ...
#8 19.87 Setting up xfonts-utils (1:7.7+6) ...
#8 19.88 Setting up libcairo2:amd64 (1.16.0-7) ...
#8 19.88 Setting up libxxf86vm1:amd64 (1:1.1.4-1+b2) ...
#8 19.88 Setting up dbus-user-session (1.14.10-1~deb12u1) ...
#8 19.89 Setting up xfonts-base (1:1.0.5+nmu1) ...
#8 19.94 Setting up adwaita-icon-theme (43-1) ...
#8 20.01 update-alternatives: using /usr/share/icons/Adwaita/cursor.theme to provide /usr/share/icons/default/index.theme (x-cursor-theme) in auto mode
#8 20.01 Setting up libxfixes3:amd64 (1:6.0.0-2) ...
#8 20.02 Setting up libxinerama1:amd64 (2:1.1.4-3) ...
#8 20.02 Setting up libxrandr2:amd64 (2:1.5.2-2+b1) ...
#8 20.02 Setting up libxt6:amd64 (1:1.2.1-1.1) ...
#8 20.03 Setting up libcups2:amd64 (2.4.2-3+deb12u9) ...
#8 20.03 Setting up xauth (1:1.1.2-1) ...
#8 20.04 Setting up libgdk-pixbuf2.0-bin (2.42.10+dfsg-1+deb12u2) ...
#8 20.04 Setting up libcairo-gobject2:amd64 (1.16.0-7) ...
#8 20.04 Setting up libxss1:amd64 (1:1.2.3-1) ...
#8 20.06 Setting up libpangoft2-1.0-0:amd64 (1.50.12+ds-1) ...
#8 20.06 Setting up libpangocairo-1.0-0:amd64 (1.50.12+ds-1) ...
#8 20.06 Setting up libxmu6:amd64 (2:1.1.3-3) ...
#8 20.07 Setting up libglx-mesa0:amd64 (22.3.6-1+deb12u1) ...
#8 20.07 Setting up libxi6:amd64 (2:1.8-1+b1) ...
#8 20.07 Setting up libglx0:amd64 (1.6.0-1) ...
#8 20.08 Setting up libxtst6:amd64 (2:1.2.3-1.1) ...
#8 20.08 Setting up libxcursor1:amd64 (1:1.2.1-1) ...
#8 20.08 Setting up dconf-service (0.40.0-4) ...
#8 20.09 Setting up libxaw7:amd64 (2:1.0.14-1) ...
#8 20.09 Setting up libatspi2.0-0:amd64 (2.46.0-5) ...
#8 20.09 Setting up librsvg2-2:amd64 (2.54.7+dfsg-1~deb12u1) ...
#8 20.10 Setting up libatk-bridge2.0-0:amd64 (2.46.0-5) ...
#8 20.10 Setting up libgl1:amd64 (1.6.0-1) ...
#8 20.10 Setting up librsvg2-common:amd64 (2.54.7+dfsg-1~deb12u1) ...
#8 20.11 Setting up dconf-gsettings-backend:amd64 (0.40.0-4) ...
#8 20.11 Setting up x11-xkb-utils (7.7+7) ...
#8 20.12 Setting up xserver-common (2:21.1.7-3+deb12u11) ...
#8 20.12 Setting up libgtk-3-common (3.24.38-2~deb12u3) ...
#8 20.13 Setting up gsettings-desktop-schemas (43.0-1) ...
#8 20.13 Setting up libgtk-3-0:amd64 (3.24.38-2~deb12u3) ...
#8 20.15 Setting up xvfb (2:21.1.7-3+deb12u11) ...
#8 20.15 Setting up libgtk-3-bin (3.24.38-2~deb12u3) ...
#8 20.15 Setting up at-spi2-core (2.46.0-5) ...
#8 20.16 Processing triggers for libc-bin (2.36-9+deb12u10) ...
#8 20.18 Processing triggers for ca-certificates (20230311+deb12u1) ...
#8 20.18 Updating certificates in /etc/ssl/certs...
#8 20.58 0 added, 0 removed; done.
#8 20.58 Running hooks in /etc/ca-certificates/update.d...
#8 20.58 done.
#8 20.59 Processing triggers for libgdk-pixbuf-2.0-0:amd64 (2.42.10+dfsg-1+deb12u2) ...
#8 DONE 21.3s

#9 [4/8] COPY package*.json ./
#9 DONE 0.0s

#10 [5/8] RUN npm install --production
#10 0.212 npm warn config production Use `--omit=dev` instead.
#10 4.070 
#10 4.070 added 83 packages, and audited 84 packages in 4s
#10 4.070 
#10 4.070 14 packages are looking for funding
#10 4.070   run `npm fund` for details
#10 4.071 
#10 4.071 found 0 vulnerabilities
#10 4.072 npm notice
#10 4.072 npm notice New major version of npm available! 10.8.2 -> 11.6.4
#10 4.072 npm notice Changelog: https://github.com/npm/cli/releases/tag/v11.6.4
#10 4.072 npm notice To update run: npm install -g npm@11.6.4
#10 4.072 npm notice
#10 DONE 4.1s

#11 [6/8] RUN curl -sSL "https://mirror.ghproxy.com/https://github.com/daijro/camoufox/releases/download/v135.0.1-beta.24/camoufox-135.0.1-beta.24-lin.x86_64.zip" -o camoufox.zip &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox
#11 0.982 curl: (60) SSL certificate problem: EE certificate key too weak
#11 0.982 More details here: https://curl.se/docs/sslcerts.html
#11 0.982 
#11 0.982 curl failed to verify the legitimacy of the server and therefore could not
#11 0.982 establish a secure connection to it. To learn more about this situation and
#11 0.982 how to fix it, please visit the web page mentioned above.
#11 ERROR: process "/bin/sh -c curl -sSL \"https://mirror.ghproxy.com/https://github.com/daijro/camoufox/releases/download/v${CAMOUFOX_VERSION}/camoufox-${CAMOUFOX_VERSION}-lin.x86_64.zip\" -o camoufox.zip &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox" did not complete successfully: exit code: 60
------
 > [6/8] RUN curl -sSL "https://mirror.ghproxy.com/https://github.com/daijro/camoufox/releases/download/v135.0.1-beta.24/camoufox-135.0.1-beta.24-lin.x86_64.zip" -o camoufox.zip &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox:
0.982 curl: (60) SSL certificate problem: EE certificate key too weak
0.982 More details here: https://curl.se/docs/sslcerts.html
0.982 
0.982 curl failed to verify the legitimacy of the server and therefore could not
0.982 establish a secure connection to it. To learn more about this situation and
0.982 how to fix it, please visit the web page mentioned above.
------
Dockerfile:22
--------------------
  21 |     ARG CAMOUFOX_VERSION=135.0.1-beta.24
  22 | >>> RUN curl -sSL "https://mirror.ghproxy.com/https://github.com/daijro/camoufox/releases/download/v${CAMOUFOX_VERSION}/camoufox-${CAMOUFOX_VERSION}-lin.x86_64.zip" -o camoufox.zip && \
  23 | >>>     unzip camoufox.zip && \
  24 | >>>     rm camoufox.zip && \
  25 | >>>     chmod +x /app/camoufox/camoufox
  26 |     
--------------------
ERROR: failed to build: failed to solve: process "/bin/sh -c curl -sSL \"https://mirror.ghproxy.com/https://github.com/daijro/camoufox/releases/download/v${CAMOUFOX_VERSION}/camoufox-${CAMOUFOX_VERSION}-lin.x86_64.zip\" -o camoufox.zip &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox" did not complete successfully: exit code: 60
```

