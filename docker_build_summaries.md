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

## 镜像: voce

### 构建信息
- 目录: voce/
- 完整镜像名: ghcr.io/xcq0607/voce:latest
- 构建状态: ✅ 成功
- 构建耗时: 53s

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
#11 15.95 Setting up python3.10 (3.10.12-1~22.04.11) ...
#11 16.48 Setting up iptables (1.8.7-1ubuntu5.2) ...
#11 16.48 update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
#11 16.49 update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 16.49 update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
#11 16.49 update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 16.49 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#11 16.49 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#11 16.50 Setting up iproute2 (5.15.0-1ubuntu2) ...
#11 16.57 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#11 16.61 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#11 16.61 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#11 16.61 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#11 16.61 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#11 16.61 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#11 16.61 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#11 16.62 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#11 16.62 Setting up python3 (3.10.6-1~22.04.1) ...
#11 16.70 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#11 16.77 Adding group `docker' (GID 102) ...
#11 16.77 Done.
#11 16.98 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#11 16.98 invoke-rc.d: could not determine current runlevel
#11 16.99 Setting up python3-six (1.16.0-3ubuntu1) ...
#11 17.09 Setting up perl (5.34.0-3ubuntu1.5) ...
#11 17.10 Setting up python3-dateutil (2.8.1-6) ...
#11 17.22 Setting up python3-magic (2:0.4.24-2) ...
#11 17.32 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#11 17.47 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#11 17.47 Setting up supervisor (4.2.1-1ubuntu1) ...
#11 17.76 invoke-rc.d: could not determine current runlevel
#11 17.76 invoke-rc.d: policy-rc.d denied execution of start.
#11 17.86 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#11 17.96 
#11 17.96 Creating config file /etc/ssh/sshd_config with new version
#11 17.99 Creating SSH2 RSA key; this may take some time ...
#11 18.36 3072 SHA256:gUq1yEjetH+2Jq7qEpnvSI3TXe9Pa8W9kSauSJPdai4 root@buildkitsandbox (RSA)
#11 18.37 Creating SSH2 ECDSA key; this may take some time ...
#11 18.37 256 SHA256:U7peNII4qTJauL5yN5z+HuB1y/Vdx5Q+w6/4z86Xr8o root@buildkitsandbox (ECDSA)
#11 18.37 Creating SSH2 ED25519 key; this may take some time ...
#11 18.38 256 SHA256:Q43rthmf10oLNSQkI+wC2GXS7+hRHgu++lEgGttVZwM root@buildkitsandbox (ED25519)
#11 18.44 invoke-rc.d: could not determine current runlevel
#11 18.44 invoke-rc.d: policy-rc.d denied execution of start.
#11 18.62 Setting up s3cmd (2.2.0-1) ...
#11 18.75 Setting up liberror-perl (0.17029-1) ...
#11 18.75 Setting up git (1:2.34.1-1ubuntu1.15) ...
#11 18.76 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#11 18.77 Processing triggers for ca-certificates (20240203~22.04.1) ...
#11 18.78 Updating certificates in /etc/ssl/certs...
#11 19.19 0 added, 0 removed; done.
#11 19.19 Running hooks in /etc/ca-certificates/update.d...
#11 19.19 done.
#11 19.27 useradd: warning: the home directory /home/user already exists.
#11 19.27 useradd: Not copying any file from skel directory into it.
#11 DONE 20.2s

#13 [stage-1  6/10] RUN /install.sh
#13 0.922   ┌────────────────────────────────────────────────────────────────┐ 
#13 0.922   │              vocechat-server v0.4.2 installation guide         │ 
#13 0.922   └────────────────────────────────────────────────────────────────┘ 
#13 0.926 
#13 0.926 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#13 0.926 
#13 0.930 Reading package lists...
#13 0.939 Building dependency tree...
#13 0.939 Reading state information...
#13 0.940 E: Unable to locate package libssl-dev
#13 0.941 
#13 0.942 -e Detected platform: [31mx86_64-unknown-linux-musl[0m.
#13 0.942 Downloading URL: https://sh.voce.chat/vocechat-server-v0.4.2-x86_64-unknown-linux-musl.zip
#13 1.155 #=#=#                                                                         ##O#-#                                                                        ##O=#  #                                                                                                                                                 0.1%                                                                           0.2%                                                                           0.4%                                                                           0.6%                                                                           0.9%                                                                           1.3%#                                                                          2.0%##                                                                         3.1%###                                                                        4.7%#####                                                                      6.9%#######                                                                   10.6%###########                                                               15.6%#################                                                         23.8%#########################                                                 35.7%#####################################                                     52.2%##############################################                            65.1%##########################################################                81.5%######################################################################    97.4%######################################################################## 100.0%
#13 3.792   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#13 3.792                                  Dload  Upload   Total   Spent    Left  Speed
#13 3.792   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100   634  100   634    0     0    907      0 --:--:-- --:--:-- --:--:--   907
#13 4.494 
#13 4.496 Docker environment detected. Skipping service installation.
#13 DONE 4.5s

#14 [stage-1  7/10] COPY --from=builder /app/xy /usr/local/bin/xy
#14 DONE 0.1s

#15 [stage-1  8/10] COPY --from=builder /app/td /usr/local/bin/td
#15 DONE 0.0s

#16 [stage-1  9/10] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#16 DONE 0.0s

#17 [stage-1 10/10] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#17 DONE 0.1s

#18 exporting to image
#18 exporting layers
#18 exporting layers 2.5s done
#18 writing image sha256:18735463a113cfa1223947157010def3cd4fbff16fd4e490dc7103ce7449d48c done
#18 naming to ghcr.io/xcq0607/voce:latest done
#18 DONE 2.5s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 27)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 27)
```

