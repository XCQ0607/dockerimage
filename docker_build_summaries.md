# Docker Build Summaries

## Repository File Structure
```
.
├── docker_build_summaries.md
├── fiora
│   ├── Dockerfile
│   ├── build.flag
│   ├── entrypoint.sh
│   └── supervisord.conf
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

33 directories, 46 files
```

## 镜像: rustdesk

### 构建信息
- 目录: rustdesk/
- 完整镜像名: ghcr.io/xcq0607/rustdesk:latest
- 构建状态: ✅ 成功
- 构建耗时: 50s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/rustdesk:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-rustdesk ghcr.io/xcq0607/rustdesk:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/rustdesk:latest
```

### 构建日志

```
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 15.10 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.10 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.11 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 15.63 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 15.71 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 15.75 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 15.75 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 15.75 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 15.75 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 15.75 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 15.75 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 15.76 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 15.76 Setting up python3 (3.10.6-1~22.04.1) ...
#10 15.84 Setting up binutils (2.38-4ubuntu2.10) ...
#10 15.84 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 15.86 Setting up libexpat1-dev:amd64 (2.4.7-1ubuntu0.6) ...
#10 15.86 Setting up libdpkg-perl (1.21.1ubuntu2.6) ...
#10 15.87 Setting up libstdc++-11-dev:amd64 (11.4.0-1ubuntu1~22.04.2) ...
#10 15.88 Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu9.2) ...
#10 15.89 Setting up gcc-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 15.89 Setting up python3-lib2to3 (3.10.8-1~22.04) ...
#10 15.98 Setting up libmysqlclient-dev (8.0.43-0ubuntu0.22.04.2) ...
#10 15.98 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 16.12 Setting up default-libmysqlclient-dev:amd64 (1.0.8) ...
#10 16.13 Setting up python3-distutils (3.10.8-1~22.04) ...
#10 16.22 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 16.22 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 16.51 invoke-rc.d: could not determine current runlevel
#10 16.51 invoke-rc.d: policy-rc.d denied execution of start.
#10 16.62 Setting up python3-setuptools (59.6.0-1.2ubuntu0.22.04.3) ...
#10 16.89 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 16.99 
#10 16.99 Creating config file /etc/ssh/sshd_config with new version
#10 17.01 Creating SSH2 RSA key; this may take some time ...
#10 17.70 3072 SHA256:JsHnR0+PJBCe97+y3dIL//xK6ohK+2WehdZVbhm81KY root@buildkitsandbox (RSA)
#10 17.70 Creating SSH2 ECDSA key; this may take some time ...
#10 17.71 256 SHA256:K868sjHL9b66lUY6DzAfZ+Km8O0F11zaZpYfnfYMABM root@buildkitsandbox (ECDSA)
#10 17.71 Creating SSH2 ED25519 key; this may take some time ...
#10 17.72 256 SHA256:T2aJrLB24CgY0ms+VbatZJmFSc2yGCZIKXC4e/t6OhY root@buildkitsandbox (ED25519)
#10 17.77 invoke-rc.d: could not determine current runlevel
#10 17.78 invoke-rc.d: policy-rc.d denied execution of start.
#10 17.95 Setting up g++-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 17.96 Setting up python3-wheel (0.37.1-2ubuntu0.22.04.1) ...
#10 18.06 Setting up gcc (4:11.2.0-1ubuntu1) ...
#10 18.07 Setting up dpkg-dev (1.21.1ubuntu2.6) ...
#10 18.08 Setting up liberror-perl (0.17029-1) ...
#10 18.08 Setting up pkg-config (0.29.2-1ubuntu3) ...
#10 18.10 Setting up libpython3.10-dev:amd64 (3.10.12-1~22.04.11) ...
#10 18.10 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 18.11 Setting up python3-pip (22.0.2+dfsg-1ubuntu0.7) ...
#10 18.99 Setting up python3.10-dev (3.10.12-1~22.04.11) ...
#10 18.99 Setting up g++ (4:11.2.0-1ubuntu1) ...
#10 19.01 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#10 19.01 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#10 19.01 Setting up build-essential (12.9ubuntu3) ...
#10 19.01 Setting up libpython3-dev:amd64 (3.10.6-1~22.04.1) ...
#10 19.02 Setting up python3-dev (3.10.6-1~22.04.1) ...
#10 19.02 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 19.03 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 19.04 Updating certificates in /etc/ssl/certs...
#10 19.46 0 added, 0 removed; done.
#10 19.46 Running hooks in /etc/ca-certificates/update.d...
#10 19.46 done.
#10 DONE 20.4s

#12 [stage-1 5/9] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.1s

#13 [stage-1 6/9] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.0s

#14 [stage-1 7/9] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.0s

#15 [stage-1 8/9] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 DONE 0.1s

#16 [stage-1 9/9] RUN chmod +x /app/rustdesk-api/*.sh && chmod +x /app/rustdesk-server/*.sh
#16 DONE 0.1s

#17 exporting to image
#17 exporting layers
#17 exporting layers 3.1s done
#17 writing image sha256:d6b7f476131cd70cd15c2dcd5c97a5eb1997fc5edcb9f6b1032a00b7e06f9ba8 done
#17 naming to ghcr.io/xcq0607/rustdesk:latest done
#17 DONE 3.1s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "SECRET_KEY") (line 26)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "RUSTDESK_KEY") (line 26)
```

