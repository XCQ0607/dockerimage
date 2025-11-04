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
├── nezha
│   ├── Dockerfile
│   ├── app
│   │   ├── backup
│   │   ├── cron
│   │   ├── healthcheck.sh
│   │   ├── install-nezha.sh
│   │   ├── keepalive.sh
│   │   ├── nezha-start.sh
│   │   ├── nezha-stop.sh
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

46 directories, 63 files
```

## 镜像: lxmusic

### 构建信息
- 目录: lxmusic/
- 完整镜像名: ghcr.io/xcq0607/lxmusic:latest
- 构建状态: ✅ 成功
- 构建耗时: 640s

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
#10 559.6 Selecting previously unselected package gpg-wks-server.
#10 559.6 Preparing to unpack .../12-gpg-wks-server_2.2.27-3ubuntu2.4_amd64.deb ...
#10 559.6 Unpacking gpg-wks-server (2.2.27-3ubuntu2.4) ...
#10 559.6 Selecting previously unselected package gpgsm.
#10 559.6 Preparing to unpack .../13-gpgsm_2.2.27-3ubuntu2.4_amd64.deb ...
#10 559.6 Unpacking gpgsm (2.2.27-3ubuntu2.4) ...
#10 559.6 Selecting previously unselected package gnupg.
#10 559.6 Preparing to unpack .../14-gnupg_2.2.27-3ubuntu2.4_all.deb ...
#10 559.6 Unpacking gnupg (2.2.27-3ubuntu2.4) ...
#10 559.6 Setting up libksba8:amd64 (1.6.0-2ubuntu0.2) ...
#10 559.7 Setting up apt-transport-https (2.4.14) ...
#10 559.7 Setting up libnpth0:amd64 (1.6-3build2) ...
#10 559.7 Setting up libassuan0:amd64 (2.5.5-1build1) ...
#10 559.7 Setting up gnupg-l10n (2.2.27-3ubuntu2.4) ...
#10 559.7 Setting up gpgconf (2.2.27-3ubuntu2.4) ...
#10 559.7 Setting up gpg (2.2.27-3ubuntu2.4) ...
#10 559.7 Setting up gnupg-utils (2.2.27-3ubuntu2.4) ...
#10 559.7 Setting up pinentry-curses (1.1.1-1build2) ...
#10 559.7 Setting up gpg-agent (2.2.27-3ubuntu2.4) ...
#10 560.1 Setting up gpgsm (2.2.27-3ubuntu2.4) ...
#10 560.1 Setting up dirmngr (2.2.27-3ubuntu2.4) ...
#10 560.2 Setting up gpg-wks-server (2.2.27-3ubuntu2.4) ...
#10 560.2 Setting up gpg-wks-client (2.2.27-3ubuntu2.4) ...
#10 560.2 Setting up gnupg (2.2.27-3ubuntu2.4) ...
#10 560.2 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 560.3 
#10 560.3 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#10 560.3 
#10 560.4 Get:1 https://deb.nodesource.com/node_16.x nodistro InRelease [12.1 kB]
#10 560.5 Get:2 https://deb.nodesource.com/node_16.x nodistro/main amd64 Packages [7253 B]
#10 560.9 Hit:3 http://security.ubuntu.com/ubuntu jammy-security InRelease
#10 561.0 Hit:4 http://archive.ubuntu.com/ubuntu jammy InRelease
#10 561.2 Hit:5 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
#10 561.3 Hit:6 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
#10 561.4 Fetched 19.4 kB in 1s (18.5 kB/s)
#10 561.4 Reading package lists...
#10 562.2 Building dependency tree...
#10 562.4 Reading state information...
#10 562.4 2 packages can be upgraded. Run 'apt list --upgradable' to see them.
#10 562.4 [1;32m2025-11-04 18:14:43 - Repository configured successfully. To install Node.js, run: apt install nodejs -y[0m
#10 562.4 Reading package lists...
#10 563.2 Building dependency tree...
#10 563.4 Reading state information...
#10 563.5 The following NEW packages will be installed:
#10 563.5   nodejs
#10 563.7 0 upgraded, 1 newly installed, 0 to remove and 2 not upgraded.
#10 563.7 Need to get 27.5 MB of archives.
#10 563.7 After this operation, 128 MB of additional disk space will be used.
#10 563.7 Get:1 https://deb.nodesource.com/node_16.x nodistro/main amd64 nodejs amd64 16.20.2-1nodesource1 [27.5 MB]
#10 563.9 debconf: delaying package configuration, since apt-utils is not installed
#10 563.9 Fetched 27.5 MB in 0s (98.1 MB/s)
#10 564.0 Selecting previously unselected package nodejs.
#10 564.0 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 14160 files and directories currently installed.)
#10 564.0 Preparing to unpack .../nodejs_16.20.2-1nodesource1_amd64.deb ...
#10 564.0 Unpacking nodejs (16.20.2-1nodesource1) ...
#10 566.0 Setting up nodejs (16.20.2-1nodesource1) ...
#10 566.1 useradd: warning: the home directory /home/user already exists.
#10 566.1 useradd: Not copying any file from skel directory into it.
#10 DONE 567.3s

#12 [stage-1 5/9] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.1s

#13 [stage-1 6/9] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.1s

#14 [stage-1 7/9] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.0s

#15 [stage-1 8/9] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 DONE 0.1s

#16 [stage-1 9/9] RUN cd /app/lx && npm install --production
#16 0.367 npm WARN config production Use `--omit=dev` instead.
#16 2.758 
#16 2.758 added 17 packages, and audited 18 packages in 2s
#16 2.762 
#16 2.762 1 high severity vulnerability
#16 2.762 
#16 2.762 To address all issues, run:
#16 2.762   npm audit fix
#16 2.762 
#16 2.762 Run `npm audit` for details.
#16 2.762 npm notice 
#16 2.762 npm notice New major version of npm available! 8.19.4 -> 11.6.2
#16 2.762 npm notice Changelog: <https://github.com/npm/cli/releases/tag/v11.6.2>
#16 2.762 npm notice Run `npm install -g npm@11.6.2` to update!
#16 2.762 npm notice 
#16 DONE 2.8s

#17 exporting to image
#17 exporting layers
#17 exporting layers 3.3s done
#17 writing image sha256:0acd09980d6c347bb6ac97a511a76a4e50202e8d7d2360fc6536046bb92037db done
#17 naming to ghcr.io/xcq0607/lxmusic:latest done
#17 DONE 3.4s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 57)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 57)
```

