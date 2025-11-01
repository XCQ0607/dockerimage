# Docker Build Summaries

## Repository File Structure
```
.
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

40 directories, 54 files
```

## 镜像: lxmusic

### 构建信息
- 目录: lxmusic/
- 完整镜像名: ghcr.io/xcq0607/lxmusic:latest
- 构建状态: ✅ 成功
- 构建耗时: 93s

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
#10 36.92 Selecting previously unselected package gpg-wks-server.
#10 36.92 Preparing to unpack .../12-gpg-wks-server_2.2.27-3ubuntu2.4_amd64.deb ...
#10 36.92 Unpacking gpg-wks-server (2.2.27-3ubuntu2.4) ...
#10 36.93 Selecting previously unselected package gpgsm.
#10 36.94 Preparing to unpack .../13-gpgsm_2.2.27-3ubuntu2.4_amd64.deb ...
#10 36.94 Unpacking gpgsm (2.2.27-3ubuntu2.4) ...
#10 36.95 Selecting previously unselected package gnupg.
#10 36.95 Preparing to unpack .../14-gnupg_2.2.27-3ubuntu2.4_all.deb ...
#10 36.96 Unpacking gnupg (2.2.27-3ubuntu2.4) ...
#10 36.98 Setting up libksba8:amd64 (1.6.0-2ubuntu0.2) ...
#10 36.99 Setting up apt-transport-https (2.4.14) ...
#10 36.99 Setting up libnpth0:amd64 (1.6-3build2) ...
#10 36.99 Setting up libassuan0:amd64 (2.5.5-1build1) ...
#10 36.99 Setting up gnupg-l10n (2.2.27-3ubuntu2.4) ...
#10 37.00 Setting up gpgconf (2.2.27-3ubuntu2.4) ...
#10 37.00 Setting up gpg (2.2.27-3ubuntu2.4) ...
#10 37.00 Setting up gnupg-utils (2.2.27-3ubuntu2.4) ...
#10 37.00 Setting up pinentry-curses (1.1.1-1build2) ...
#10 37.01 Setting up gpg-agent (2.2.27-3ubuntu2.4) ...
#10 37.41 Setting up gpgsm (2.2.27-3ubuntu2.4) ...
#10 37.41 Setting up dirmngr (2.2.27-3ubuntu2.4) ...
#10 37.52 Setting up gpg-wks-server (2.2.27-3ubuntu2.4) ...
#10 37.52 Setting up gpg-wks-client (2.2.27-3ubuntu2.4) ...
#10 37.53 Setting up gnupg (2.2.27-3ubuntu2.4) ...
#10 37.53 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 37.63 
#10 37.63 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#10 37.63 
#10 37.76 Get:1 https://deb.nodesource.com/node_16.x nodistro InRelease [12.1 kB]
#10 37.82 Get:2 https://deb.nodesource.com/node_16.x nodistro/main amd64 Packages [7253 B]
#10 37.95 Hit:3 http://archive.ubuntu.com/ubuntu jammy InRelease
#10 38.05 Hit:4 http://security.ubuntu.com/ubuntu jammy-security InRelease
#10 38.09 Hit:5 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
#10 38.23 Hit:6 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
#10 38.30 Fetched 19.4 kB in 1s (30.7 kB/s)
#10 38.30 Reading package lists...
#10 39.12 Building dependency tree...
#10 39.29 Reading state information...
#10 39.31 2 packages can be upgraded. Run 'apt list --upgradable' to see them.
#10 39.31 [1;32m2025-11-01 18:09:33 - Repository configured successfully. To install Node.js, run: apt install nodejs -y[0m
#10 39.34 Reading package lists...
#10 40.15 Building dependency tree...
#10 40.31 Reading state information...
#10 40.45 The following NEW packages will be installed:
#10 40.45   nodejs
#10 40.55 0 upgraded, 1 newly installed, 0 to remove and 2 not upgraded.
#10 40.55 Need to get 27.5 MB of archives.
#10 40.55 After this operation, 128 MB of additional disk space will be used.
#10 40.55 Get:1 https://deb.nodesource.com/node_16.x nodistro/main amd64 nodejs amd64 16.20.2-1nodesource1 [27.5 MB]
#10 40.84 debconf: delaying package configuration, since apt-utils is not installed
#10 40.86 Fetched 27.5 MB in 0s (97.2 MB/s)
#10 40.87 Selecting previously unselected package nodejs.
#10 40.87 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 14160 files and directories currently installed.)
#10 40.88 Preparing to unpack .../nodejs_16.20.2-1nodesource1_amd64.deb ...
#10 40.88 Unpacking nodejs (16.20.2-1nodesource1) ...
#10 42.98 Setting up nodejs (16.20.2-1nodesource1) ...
#10 43.08 useradd: warning: the home directory /home/user already exists.
#10 43.08 useradd: Not copying any file from skel directory into it.
#10 DONE 44.3s

#12 [stage-1 5/9] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.1s

#13 [stage-1 6/9] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.0s

#14 [stage-1 7/9] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.0s

#15 [stage-1 8/9] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 DONE 0.1s

#16 [stage-1 9/9] RUN cd /app/lx && npm install --production
#16 0.365 npm WARN config production Use `--omit=dev` instead.
#16 3.267 
#16 3.267 added 17 packages, and audited 18 packages in 3s
#16 3.270 
#16 3.270 1 high severity vulnerability
#16 3.270 
#16 3.270 To address all issues, run:
#16 3.270   npm audit fix
#16 3.270 
#16 3.270 Run `npm audit` for details.
#16 3.270 npm notice 
#16 3.270 npm notice New major version of npm available! 8.19.4 -> 11.6.2
#16 3.271 npm notice Changelog: <https://github.com/npm/cli/releases/tag/v11.6.2>
#16 3.271 npm notice Run `npm install -g npm@11.6.2` to update!
#16 3.271 npm notice 
#16 DONE 3.3s

#17 exporting to image
#17 exporting layers
#17 exporting layers 3.0s done
#17 writing image sha256:4300d05705ba8928023a44a3aceea675dbfb3a9d1bb9aa80d8beee7b00862269 done
#17 naming to ghcr.io/xcq0607/lxmusic:latest done
#17 DONE 3.0s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 60)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 60)
```

