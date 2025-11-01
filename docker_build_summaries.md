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
- 构建耗时: 83s

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
#10 32.46 Selecting previously unselected package gpg-wks-server.
#10 32.46 Preparing to unpack .../12-gpg-wks-server_2.2.27-3ubuntu2.4_amd64.deb ...
#10 32.46 Unpacking gpg-wks-server (2.2.27-3ubuntu2.4) ...
#10 32.47 Selecting previously unselected package gpgsm.
#10 32.48 Preparing to unpack .../13-gpgsm_2.2.27-3ubuntu2.4_amd64.deb ...
#10 32.48 Unpacking gpgsm (2.2.27-3ubuntu2.4) ...
#10 32.49 Selecting previously unselected package gnupg.
#10 32.49 Preparing to unpack .../14-gnupg_2.2.27-3ubuntu2.4_all.deb ...
#10 32.49 Unpacking gnupg (2.2.27-3ubuntu2.4) ...
#10 32.51 Setting up libksba8:amd64 (1.6.0-2ubuntu0.2) ...
#10 32.52 Setting up apt-transport-https (2.4.14) ...
#10 32.52 Setting up libnpth0:amd64 (1.6-3build2) ...
#10 32.52 Setting up libassuan0:amd64 (2.5.5-1build1) ...
#10 32.52 Setting up gnupg-l10n (2.2.27-3ubuntu2.4) ...
#10 32.53 Setting up gpgconf (2.2.27-3ubuntu2.4) ...
#10 32.53 Setting up gpg (2.2.27-3ubuntu2.4) ...
#10 32.53 Setting up gnupg-utils (2.2.27-3ubuntu2.4) ...
#10 32.53 Setting up pinentry-curses (1.1.1-1build2) ...
#10 32.54 Setting up gpg-agent (2.2.27-3ubuntu2.4) ...
#10 32.95 Setting up gpgsm (2.2.27-3ubuntu2.4) ...
#10 32.95 Setting up dirmngr (2.2.27-3ubuntu2.4) ...
#10 33.06 Setting up gpg-wks-server (2.2.27-3ubuntu2.4) ...
#10 33.07 Setting up gpg-wks-client (2.2.27-3ubuntu2.4) ...
#10 33.07 Setting up gnupg (2.2.27-3ubuntu2.4) ...
#10 33.07 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 33.19 
#10 33.19 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#10 33.19 
#10 33.31 Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
#10 33.33 Hit:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
#10 33.35 Get:3 https://deb.nodesource.com/node_16.x nodistro InRelease [12.1 kB]
#10 33.35 Hit:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
#10 33.48 Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
#10 33.53 Get:6 https://deb.nodesource.com/node_16.x nodistro/main amd64 Packages [7253 B]
#10 33.68 Fetched 19.4 kB in 0s (43.6 kB/s)
#10 33.68 Reading package lists...
#10 34.57 Building dependency tree...
#10 34.74 Reading state information...
#10 34.76 2 packages can be upgraded. Run 'apt list --upgradable' to see them.
#10 34.76 [1;32m2025-11-01 18:45:29 - Repository configured successfully. To install Node.js, run: apt install nodejs -y[0m
#10 34.79 Reading package lists...
#10 35.69 Building dependency tree...
#10 35.90 Reading state information...
#10 36.06 The following NEW packages will be installed:
#10 36.06   nodejs
#10 36.21 0 upgraded, 1 newly installed, 0 to remove and 2 not upgraded.
#10 36.21 Need to get 27.5 MB of archives.
#10 36.21 After this operation, 128 MB of additional disk space will be used.
#10 36.21 Get:1 https://deb.nodesource.com/node_16.x nodistro/main amd64 nodejs amd64 16.20.2-1nodesource1 [27.5 MB]
#10 36.51 debconf: delaying package configuration, since apt-utils is not installed
#10 36.53 Fetched 27.5 MB in 0s (76.9 MB/s)
#10 36.55 Selecting previously unselected package nodejs.
#10 36.55 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 14160 files and directories currently installed.)
#10 36.56 Preparing to unpack .../nodejs_16.20.2-1nodesource1_amd64.deb ...
#10 36.56 Unpacking nodejs (16.20.2-1nodesource1) ...
#10 38.68 Setting up nodejs (16.20.2-1nodesource1) ...
#10 38.76 useradd: warning: the home directory /home/user already exists.
#10 38.76 useradd: Not copying any file from skel directory into it.
#10 DONE 40.0s

#12 [stage-1 5/9] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.0s

#13 [stage-1 6/9] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.0s

#14 [stage-1 7/9] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.1s

#15 [stage-1 8/9] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 DONE 0.1s

#16 [stage-1 9/9] RUN cd /app/lx && npm install --production
#16 0.358 npm WARN config production Use `--omit=dev` instead.
#16 3.532 
#16 3.532 added 17 packages, and audited 18 packages in 3s
#16 3.536 
#16 3.536 1 high severity vulnerability
#16 3.536 
#16 3.536 To address all issues, run:
#16 3.536   npm audit fix
#16 3.536 
#16 3.536 Run `npm audit` for details.
#16 3.537 npm notice 
#16 3.537 npm notice New major version of npm available! 8.19.4 -> 11.6.2
#16 3.537 npm notice Changelog: <https://github.com/npm/cli/releases/tag/v11.6.2>
#16 3.537 npm notice Run `npm install -g npm@11.6.2` to update!
#16 3.537 npm notice 
#16 DONE 3.6s

#17 exporting to image
#17 exporting layers
#17 exporting layers 3.1s done
#17 writing image sha256:1fe7eca44c4aa896ae60ea2a7192ed686266bd32dfb5c408f0877df4de9bae19 done
#17 naming to ghcr.io/xcq0607/lxmusic:latest done
#17 DONE 3.1s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 60)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 60)
```

