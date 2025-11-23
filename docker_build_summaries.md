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

56 directories, 73 files
```

## 镜像: lxmusic

### 构建信息
- 目录: lxmusic/
- 完整镜像名: ghcr.io/xcq0607/lxmusic:latest
- 构建状态: ✅ 成功
- 构建耗时: 97s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/lxmusic:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-lxmusic ghcr.io/xcq0607/lxmusic:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/lxmusic:latest
```

### 构建日志

```
#10 50.96 Selecting previously unselected package gpg-wks-server.
#10 50.96 Preparing to unpack .../12-gpg-wks-server_2.2.27-3ubuntu2.4_amd64.deb ...
#10 50.96 Unpacking gpg-wks-server (2.2.27-3ubuntu2.4) ...
#10 50.98 Selecting previously unselected package gpgsm.
#10 50.99 Preparing to unpack .../13-gpgsm_2.2.27-3ubuntu2.4_amd64.deb ...
#10 50.99 Unpacking gpgsm (2.2.27-3ubuntu2.4) ...
#10 51.00 Selecting previously unselected package gnupg.
#10 51.00 Preparing to unpack .../14-gnupg_2.2.27-3ubuntu2.4_all.deb ...
#10 51.01 Unpacking gnupg (2.2.27-3ubuntu2.4) ...
#10 51.03 Setting up libksba8:amd64 (1.6.0-2ubuntu0.2) ...
#10 51.03 Setting up apt-transport-https (2.4.14) ...
#10 51.03 Setting up libnpth0:amd64 (1.6-3build2) ...
#10 51.04 Setting up libassuan0:amd64 (2.5.5-1build1) ...
#10 51.04 Setting up gnupg-l10n (2.2.27-3ubuntu2.4) ...
#10 51.04 Setting up gpgconf (2.2.27-3ubuntu2.4) ...
#10 51.04 Setting up gpg (2.2.27-3ubuntu2.4) ...
#10 51.05 Setting up gnupg-utils (2.2.27-3ubuntu2.4) ...
#10 51.05 Setting up pinentry-curses (1.1.1-1build2) ...
#10 51.06 Setting up gpg-agent (2.2.27-3ubuntu2.4) ...
#10 51.46 Setting up gpgsm (2.2.27-3ubuntu2.4) ...
#10 51.46 Setting up dirmngr (2.2.27-3ubuntu2.4) ...
#10 51.57 Setting up gpg-wks-server (2.2.27-3ubuntu2.4) ...
#10 51.57 Setting up gpg-wks-client (2.2.27-3ubuntu2.4) ...
#10 51.58 Setting up gnupg (2.2.27-3ubuntu2.4) ...
#10 51.58 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 51.85 
#10 51.85 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#10 51.85 
#10 51.98 Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
#10 52.01 Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
#10 52.03 Get:3 https://deb.nodesource.com/node_16.x nodistro InRelease [12.1 kB]
#10 52.05 Hit:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
#10 52.19 Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
#10 52.19 Get:6 https://deb.nodesource.com/node_16.x nodistro/main amd64 Packages [7253 B]
#10 52.32 Fetched 19.4 kB in 0s (45.1 kB/s)
#10 52.32 Reading package lists...
#10 53.16 Building dependency tree...
#10 53.34 Reading state information...
#10 53.35 All packages are up to date.
#10 53.36 [1;32m2025-11-23 15:09:12 - Repository configured successfully. To install Node.js, run: apt install nodejs -y[0m
#10 53.39 Reading package lists...
#10 54.22 Building dependency tree...
#10 54.40 Reading state information...
#10 54.55 The following NEW packages will be installed:
#10 54.55   nodejs
#10 54.78 0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
#10 54.78 Need to get 27.5 MB of archives.
#10 54.78 After this operation, 128 MB of additional disk space will be used.
#10 54.78 Get:1 https://deb.nodesource.com/node_16.x nodistro/main amd64 nodejs amd64 16.20.2-1nodesource1 [27.5 MB]
#10 55.10 debconf: delaying package configuration, since apt-utils is not installed
#10 55.12 Fetched 27.5 MB in 0s (60.8 MB/s)
#10 55.14 Selecting previously unselected package nodejs.
#10 55.14 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 14160 files and directories currently installed.)
#10 55.15 Preparing to unpack .../nodejs_16.20.2-1nodesource1_amd64.deb ...
#10 55.15 Unpacking nodejs (16.20.2-1nodesource1) ...
#10 57.22 Setting up nodejs (16.20.2-1nodesource1) ...
#10 57.33 useradd: warning: the home directory /home/user already exists.
#10 57.33 useradd: Not copying any file from skel directory into it.
#10 DONE 58.5s

#12 [stage-1 5/9] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.1s

#13 [stage-1 6/9] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.0s

#14 [stage-1 7/9] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.0s

#15 [stage-1 8/9] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 DONE 0.1s

#16 [stage-1 9/9] RUN cd /app/lx && npm install --production
#16 0.366 npm WARN config production Use `--omit=dev` instead.
#16 3.282 
#16 3.282 added 17 packages, and audited 18 packages in 3s
#16 3.285 
#16 3.285 1 high severity vulnerability
#16 3.285 
#16 3.285 To address all issues, run:
#16 3.285   npm audit fix
#16 3.285 
#16 3.285 Run `npm audit` for details.
#16 3.286 npm notice 
#16 3.286 npm notice New major version of npm available! 8.19.4 -> 11.6.3
#16 3.286 npm notice Changelog: <https://github.com/npm/cli/releases/tag/v11.6.3>
#16 3.286 npm notice Run `npm install -g npm@11.6.3` to update!
#16 3.286 npm notice 
#16 DONE 3.3s

#17 exporting to image
#17 exporting layers
#17 exporting layers 3.5s done
#17 writing image sha256:81fa914b2190e0400974712ce4ddd9ed8e7a36a922570fce196e18b5b3b1df5f done
#17 naming to ghcr.io/xcq0607/lxmusic:latest done
#17 DONE 3.5s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 57)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 57)
```

