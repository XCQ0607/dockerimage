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

## 镜像: voce

### 构建信息
- 目录: voce/
- 完整镜像名: ghcr.io/xcq0607/voce:latest
- 构建状态: ✅ 成功
- 构建耗时: 49s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/voce:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-voce ghcr.io/xcq0607/voce:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/voce:latest
```

### 构建日志

```
#11 13.75 Setting up python3.10 (3.10.12-1~22.04.11) ...
#11 14.28 Setting up iptables (1.8.7-1ubuntu5.2) ...
#11 14.28 update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
#11 14.29 update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 14.29 update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
#11 14.29 update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 14.29 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#11 14.29 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#11 14.30 Setting up iproute2 (5.15.0-1ubuntu2) ...
#11 14.37 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#11 14.41 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#11 14.41 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#11 14.41 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#11 14.41 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#11 14.41 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#11 14.41 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#11 14.41 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#11 14.42 Setting up python3 (3.10.6-1~22.04.1) ...
#11 14.49 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#11 14.56 Adding group `docker' (GID 102) ...
#11 14.57 Done.
#11 14.77 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#11 14.77 invoke-rc.d: could not determine current runlevel
#11 14.78 Setting up python3-six (1.16.0-3ubuntu1) ...
#11 14.87 Setting up perl (5.34.0-3ubuntu1.5) ...
#11 14.88 Setting up python3-dateutil (2.8.1-6) ...
#11 15.01 Setting up python3-magic (2:0.4.24-2) ...
#11 15.10 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#11 15.25 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#11 15.26 Setting up supervisor (4.2.1-1ubuntu1) ...
#11 15.54 invoke-rc.d: could not determine current runlevel
#11 15.54 invoke-rc.d: policy-rc.d denied execution of start.
#11 15.64 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#11 15.74 
#11 15.74 Creating config file /etc/ssh/sshd_config with new version
#11 15.76 Creating SSH2 RSA key; this may take some time ...
#11 16.02 3072 SHA256:THQk0FnGvpQVFpxYC6Zhim7TRGLa3iEAuJ7caryzayE root@buildkitsandbox (RSA)
#11 16.02 Creating SSH2 ECDSA key; this may take some time ...
#11 16.02 256 SHA256:1KRV3MPnK2T4V37g+QlPxQnESF4SDp+5OL1hll9/xBQ root@buildkitsandbox (ECDSA)
#11 16.03 Creating SSH2 ED25519 key; this may take some time ...
#11 16.03 256 SHA256:TsI7ZH024ufcjSKFSSEh/qYs/gbKp4Di5u0o2B5kcVk root@buildkitsandbox (ED25519)
#11 16.09 invoke-rc.d: could not determine current runlevel
#11 16.09 invoke-rc.d: policy-rc.d denied execution of start.
#11 16.27 Setting up s3cmd (2.2.0-1) ...
#11 16.40 Setting up liberror-perl (0.17029-1) ...
#11 16.40 Setting up git (1:2.34.1-1ubuntu1.15) ...
#11 16.41 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#11 16.42 Processing triggers for ca-certificates (20240203~22.04.1) ...
#11 16.43 Updating certificates in /etc/ssl/certs...
#11 16.84 0 added, 0 removed; done.
#11 16.84 Running hooks in /etc/ca-certificates/update.d...
#11 16.84 done.
#11 16.92 useradd: warning: the home directory /home/user already exists.
#11 16.92 useradd: Not copying any file from skel directory into it.
#11 DONE 17.8s

#12 [stage-1  6/10] RUN /install.sh
#12 0.738   ┌────────────────────────────────────────────────────────────────┐ 
#12 0.738   │              vocechat-server v0.4.2 installation guide         │ 
#12 0.738   └────────────────────────────────────────────────────────────────┘ 
#12 0.742 
#12 0.742 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#12 0.742 
#12 0.746 Reading package lists...
#12 0.755 Building dependency tree...
#12 0.755 Reading state information...
#12 0.756 E: Unable to locate package libssl-dev
#12 0.757 
#12 0.758 -e Detected platform: [31mx86_64-unknown-linux-musl[0m.
#12 0.758 Downloading URL: https://sh.voce.chat/vocechat-server-v0.4.2-x86_64-unknown-linux-musl.zip
#12 0.966 #=#=#                                                                         ##O#-#                                                                        ##O=#  #                                                                                                                                                 0.1%                                                                           0.2%                                                                           0.3%                                                                           0.5%                                                                           0.7%                                                                           1.1%#                                                                          1.6%#                                                                          2.3%##                                                                         3.4%###                                                                        4.8%#####                                                                      7.0%#######                                                                   10.1%##########                                                                14.9%###############                                                           21.5%######################                                                    31.1%################################                                          45.5%#########################################                                 58.1%####################################################                      72.5%#############################################################             85.2%######################################################################## 100.0%
#12 3.849   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#12 3.849                                  Dload  Upload   Total   Spent    Left  Speed
#12 3.849   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100   634  100   634    0     0    877      0 --:--:-- --:--:-- --:--:--   876
#12 4.575 
#12 4.577 Docker environment detected. Skipping service installation.
#12 DONE 4.6s

#13 [stage-1  7/10] COPY --from=builder /app/xy /usr/local/bin/xy
#13 DONE 0.1s

#14 [stage-1  8/10] COPY --from=builder /app/td /usr/local/bin/td
#14 DONE 0.0s

#15 [stage-1  9/10] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#15 DONE 0.0s

#16 [stage-1 10/10] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#16 DONE 0.0s

#17 exporting to image
#17 exporting layers
#17 exporting layers 2.4s done
#17 writing image sha256:aff90f9cd30a57026a55ce25f296bdd7a0c871c9c235256bb1fd70f108a9952f done
#17 naming to ghcr.io/xcq0607/voce:latest done
#17 DONE 2.4s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 27)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 27)
```

