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

## 镜像: nezha

### 构建信息
- 目录: nezha/
- 完整镜像名: ghcr.io/xcq0607/nezha:latest
- 构建状态: ✅ 成功
- 构建耗时: 325s

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
#10 283.9 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 283.9 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 283.9 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 283.9 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 283.9 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 283.9 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 283.9 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 283.9 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 283.9 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 283.9 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 284.5 Setting up iptables (1.8.7-1ubuntu5.2) ...
#10 284.5 update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
#10 284.5 update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#10 284.5 update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
#10 284.5 update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#10 284.5 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#10 284.5 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#10 284.5 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 284.5 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 284.6 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 284.6 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 284.6 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 284.6 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 284.6 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 284.6 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 284.6 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 284.6 Setting up python3 (3.10.6-1~22.04.1) ...
#10 284.7 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#10 284.7 Adding group `docker' (GID 102) ...
#10 284.7 Done.
#10 284.9 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#10 284.9 invoke-rc.d: could not determine current runlevel
#10 285.0 Setting up python3-six (1.16.0-3ubuntu1) ...
#10 285.1 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 285.1 Setting up python3-dateutil (2.8.1-6) ...
#10 285.2 Setting up python3-magic (2:0.4.24-2) ...
#10 285.3 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 285.4 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 285.4 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 285.7 invoke-rc.d: could not determine current runlevel
#10 285.7 invoke-rc.d: policy-rc.d denied execution of start.
#10 285.8 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 285.9 
#10 285.9 Creating config file /etc/ssh/sshd_config with new version
#10 285.9 Creating SSH2 RSA key; this may take some time ...
#10 286.2 3072 SHA256:cIjVoIhpQyRl3iAJj7WTcNogKx+JZX3pXqtN033UBHk root@buildkitsandbox (RSA)
#10 286.2 Creating SSH2 ECDSA key; this may take some time ...
#10 286.2 256 SHA256:xrdq05GPRccJ/LGWYFevTJ69p/VN8c0kNLJ75eW1s/c root@buildkitsandbox (ECDSA)
#10 286.2 Creating SSH2 ED25519 key; this may take some time ...
#10 286.2 256 SHA256:rFXjWIEnxtGjvqEOYgMSGU5DAPulJIGf3ZNfb8bpbfY root@buildkitsandbox (ED25519)
#10 286.3 invoke-rc.d: could not determine current runlevel
#10 286.3 invoke-rc.d: policy-rc.d denied execution of start.
#10 286.5 Setting up s3cmd (2.2.0-1) ...
#10 286.6 Setting up liberror-perl (0.17029-1) ...
#10 286.6 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 286.6 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 286.6 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 286.6 Updating certificates in /etc/ssl/certs...
#10 287.0 0 added, 0 removed; done.
#10 287.0 Running hooks in /etc/ca-certificates/update.d...
#10 287.0 done.
#10 287.1 useradd: warning: the home directory /home/user already exists.
#10 287.1 useradd: Not copying any file from skel directory into it.
#10 DONE 288.0s

#12 [stage-1  5/12] COPY app/install-nezha.sh /app/install-nezha.sh
#12 DONE 0.0s

#13 [stage-1  6/12] COPY app/nezha-start.sh /app/nezha-start.sh
#13 DONE 0.0s

#14 [stage-1  7/12] COPY app/nezha-stop.sh /app/nezha-stop.sh
#14 DONE 0.0s

#15 [stage-1  8/12] RUN chmod +x /app/install-nezha.sh /app/nezha-start.sh /app/nezha-stop.sh
#15 DONE 0.1s

#16 [stage-1  9/12] COPY --from=builder /app/xy /usr/local/bin/xy
#16 DONE 0.1s

#17 [stage-1 10/12] COPY --from=builder /app/td /usr/local/bin/td
#17 DONE 0.0s

#18 [stage-1 11/12] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#18 DONE 0.0s

#19 [stage-1 12/12] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#19 DONE 0.0s

#20 exporting to image
#20 exporting layers
#20 exporting layers 2.8s done
#20 writing image sha256:0f695625a2163f71761ed4efd729ed3e8ee44a6a442ff9a68d032b805f863f98 done
#20 naming to ghcr.io/xcq0607/nezha:latest done
#20 DONE 2.8s

 [33m3 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "NEZHA_PASSWORD") (line 96)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 57)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 57)
```

