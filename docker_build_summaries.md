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
│   │   ├── install-nezha.sh
│   │   ├── keepalive.sh
│   │   ├── nezha-start.sh
│   │   ├── nezha-stop.sh
│   │   ├── nezha.sh
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

46 directories, 65 files
```

## 镜像: nezha

### 构建信息
- 目录: nezha/
- 完整镜像名: ghcr.io/xcq0607/nezha:latest
- 构建状态: ✅ 成功
- 构建耗时: 50s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/nezha:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-nezha ghcr.io/xcq0607/nezha:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/nezha:latest
```

### 构建日志

```
#10 14.11 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.11 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.11 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.12 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 14.64 Setting up iptables (1.8.7-1ubuntu5.2) ...
#10 14.65 update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
#10 14.65 update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#10 14.65 update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
#10 14.65 update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#10 14.65 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#10 14.65 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#10 14.66 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 14.72 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 14.75 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 14.75 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 14.75 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 14.75 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 14.75 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 14.76 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 14.76 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 14.76 Setting up python3 (3.10.6-1~22.04.1) ...
#10 14.83 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#10 14.90 Adding group `docker' (GID 102) ...
#10 14.90 Done.
#10 15.09 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#10 15.09 invoke-rc.d: could not determine current runlevel
#10 15.10 Setting up python3-six (1.16.0-3ubuntu1) ...
#10 15.19 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 15.20 Setting up python3-dateutil (2.8.1-6) ...
#10 15.31 Setting up python3-magic (2:0.4.24-2) ...
#10 15.40 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 15.54 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 15.55 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 15.82 invoke-rc.d: could not determine current runlevel
#10 15.82 invoke-rc.d: policy-rc.d denied execution of start.
#10 15.91 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 15.99 
#10 15.99 Creating config file /etc/ssh/sshd_config with new version
#10 16.01 Creating SSH2 RSA key; this may take some time ...
#10 16.54 3072 SHA256:e6YmRaXf9HrzMm4uVzUGiB3iN+kriealAVXYKbT2O6E root@buildkitsandbox (RSA)
#10 16.54 Creating SSH2 ECDSA key; this may take some time ...
#10 16.55 256 SHA256:x7jLTNTzBXjWkpA6rRGFE5Eh6CNicPdc7SbRyoDRXGY root@buildkitsandbox (ECDSA)
#10 16.55 Creating SSH2 ED25519 key; this may take some time ...
#10 16.56 256 SHA256:t13IA2shaUzAlHRmswuYTePjLBzQhPAcXmZ4anpe5gg root@buildkitsandbox (ED25519)
#10 16.61 invoke-rc.d: could not determine current runlevel
#10 16.61 invoke-rc.d: policy-rc.d denied execution of start.
#10 16.77 Setting up s3cmd (2.2.0-1) ...
#10 16.90 Setting up liberror-perl (0.17029-1) ...
#10 16.90 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 16.91 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 16.91 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 16.92 Updating certificates in /etc/ssl/certs...
#10 17.25 0 added, 0 removed; done.
#10 17.25 Running hooks in /etc/ca-certificates/update.d...
#10 17.25 done.
#10 17.31 useradd: warning: the home directory /home/user already exists.
#10 17.31 useradd: Not copying any file from skel directory into it.
#10 DONE 17.9s

#12 [stage-1 5/9] RUN chmod +x /app/install-nezha.sh /app/nezha-start.sh /app/nezha-stop.sh /app/nezha.sh
#12 DONE 0.1s

#13 [stage-1 6/9] COPY --from=builder /app/xy /usr/local/bin/xy
#13 DONE 0.0s

#14 [stage-1 7/9] COPY --from=builder /app/td /usr/local/bin/td
#14 DONE 0.0s

#15 [stage-1 8/9] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#15 DONE 0.0s

#16 [stage-1 9/9] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#16 DONE 0.1s

#17 exporting to image
#17 exporting layers
#17 exporting layers 2.0s done
#17 writing image sha256:746cf57094f76f9349938f26ca8e4342bcb5bc93afb132c0d071d606402ae793 done
#17 naming to ghcr.io/xcq0607/nezha:latest done
#17 DONE 2.0s

 [33m3 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 57)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 57)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "NEZHA_PASSWORD") (line 96)
```

