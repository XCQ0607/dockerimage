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

48 directories, 66 files
```

## 镜像: nezha

### 构建信息
- 目录: nezha/
- 完整镜像名: ghcr.io/xcq0607/nezha:latest
- 构建状态: ✅ 成功
- 构建耗时: 60s

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
#10 16.64 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#10 16.64 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#10 16.64 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 16.70 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 16.73 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 16.73 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 16.73 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 16.73 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 16.74 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 16.74 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 16.74 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 16.74 Setting up python3 (3.10.6-1~22.04.1) ...
#10 16.81 Setting up systemd (249.11-0ubuntu3.17) ...
#10 16.82 Created symlink /etc/systemd/system/getty.target.wants/getty@tty1.service → /lib/systemd/system/getty@.service.
#10 16.82 Created symlink /etc/systemd/system/multi-user.target.wants/remote-fs.target → /lib/systemd/system/remote-fs.target.
#10 16.82 Created symlink /etc/systemd/system/dbus-org.freedesktop.resolve1.service → /lib/systemd/system/systemd-resolved.service.
#10 16.82 Created symlink /etc/systemd/system/multi-user.target.wants/systemd-resolved.service → /lib/systemd/system/systemd-resolved.service.
#10 16.83 ln: failed to create symbolic link '/etc/resolv.conf': Device or resource busy
#10 16.83 Created symlink /etc/systemd/system/sysinit.target.wants/systemd-pstore.service → /lib/systemd/system/systemd-pstore.service.
#10 16.83 Initializing machine ID from random generator.
#10 16.97 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#10 17.03 Adding group `docker' (GID 105) ...
#10 17.03 Done.
#10 17.12 Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
#10 17.21 Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
#10 17.22 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#10 17.22 invoke-rc.d: could not determine current runlevel
#10 17.23 Setting up python3-six (1.16.0-3ubuntu1) ...
#10 17.31 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 17.32 Setting up libgd3:amd64 (2.3.0-2ubuntu2.3) ...
#10 17.32 Setting up libxslt1.1:amd64 (1.1.34-4ubuntu0.22.04.4) ...
#10 17.32 Setting up python3-dateutil (2.8.1-6) ...
#10 17.44 Setting up python3-magic (2:0.4.24-2) ...
#10 17.52 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 17.65 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 17.65 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 17.90 invoke-rc.d: could not determine current runlevel
#10 17.91 invoke-rc.d: policy-rc.d denied execution of start.
#10 17.99 Created symlink /etc/systemd/system/multi-user.target.wants/supervisor.service → /lib/systemd/system/supervisor.service.
#10 18.00 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 18.08 
#10 18.08 Creating config file /etc/ssh/sshd_config with new version
#10 18.09 Creating SSH2 RSA key; this may take some time ...
#10 18.36 3072 SHA256:hOWBbVc5JleP1ZsWXQM2RCgg/iGyaYskzod5a2VGQuU root@buildkitsandbox (RSA)
#10 18.37 Creating SSH2 ECDSA key; this may take some time ...
#10 18.37 256 SHA256:BnFmdUpsnHw7SJROlgl/ry3QGCTeBC2OSXkr3aLtQsQ root@buildkitsandbox (ECDSA)
#10 18.37 Creating SSH2 ED25519 key; this may take some time ...
#10 18.38 256 SHA256:od+3dRQEQOhEqWgoGrP1VCa56BJhswO5eEMGXCfsIFg root@buildkitsandbox (ED25519)
#10 18.43 invoke-rc.d: could not determine current runlevel
#10 18.43 invoke-rc.d: policy-rc.d denied execution of start.
#10 18.52 Created symlink /etc/systemd/system/sshd.service → /lib/systemd/system/ssh.service.
#10 18.52 Created symlink /etc/systemd/system/multi-user.target.wants/ssh.service → /lib/systemd/system/ssh.service.
#10 18.58 Setting up libnginx-mod-http-image-filter (1.18.0-6ubuntu14.7) ...
#10 18.59 Setting up s3cmd (2.2.0-1) ...
#10 18.71 Setting up liberror-perl (0.17029-1) ...
#10 18.71 Setting up libnginx-mod-http-xslt-filter (1.18.0-6ubuntu14.7) ...
#10 18.72 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 18.72 Setting up nginx-core (1.18.0-6ubuntu14.7) ...
#10 18.74 invoke-rc.d: could not determine current runlevel
#10 18.74 invoke-rc.d: policy-rc.d denied execution of start.
#10 18.74 Setting up nginx (1.18.0-6ubuntu14.7) ...
#10 18.75 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 18.76 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 18.76 Updating certificates in /etc/ssl/certs...
#10 19.06 0 added, 0 removed; done.
#10 19.06 Running hooks in /etc/ca-certificates/update.d...
#10 19.06 done.
#10 19.12 useradd: warning: the home directory /home/user already exists.
#10 19.12 useradd: Not copying any file from skel directory into it.
#10 DONE 19.9s

#12 [stage-1  5/10] RUN chmod +x /app/install-nezha.sh /app/nezha-start.sh /app/nezha-stop.sh /app/nezha.sh
#12 DONE 0.1s

#13 [stage-1  6/10] COPY --from=builder /app/xy /usr/local/bin/xy
#13 DONE 0.0s

#14 [stage-1  7/10] COPY --from=builder /app/td /usr/local/bin/td
#14 DONE 0.0s

#15 [stage-1  8/10] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#15 DONE 0.0s

#16 [stage-1  9/10] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#16 DONE 0.1s

#17 [stage-1 10/10] COPY --from=builder /app/hysteria /usr/local/bin/hysteria
#17 DONE 0.0s

#18 exporting to image
#18 exporting layers
#18 exporting layers 2.3s done
#18 writing image sha256:6370b2b17aaae590f4d4f40df70fd3970796095f356850656b3076d16064d145 done
#18 naming to ghcr.io/xcq0607/nezha:latest done
#18 DONE 2.3s

 [33m3 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 59)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 59)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "NEZHA_PASSWORD") (line 98)
```

