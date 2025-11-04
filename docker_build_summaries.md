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

## 镜像: xray

### 构建信息
- 目录: xray/
- 完整镜像名: ghcr.io/xcq0607/xray:latest
- 构建状态: ✅ 成功
- 构建耗时: 76s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/xray:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-xray ghcr.io/xcq0607/xray:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/xray:latest
```

### 构建日志

```
#10 56.65 Setting up libcurl4:amd64 (7.81.0-1ubuntu1.21) ...
#10 56.65 Setting up curl (7.81.0-1ubuntu1.21) ...
#10 56.65 Setting up libbpf0:amd64 (1:0.5.0-1ubuntu22.04.1) ...
#10 56.66 Setting up libpython3-stdlib:amd64 (3.10.6-1~22.04.1) ...
#10 56.66 Setting up libpython3.10:amd64 (3.10.12-1~22.04.11) ...
#10 56.66 Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.5) ...
#10 56.66 Setting up vim (2:8.2.3995-1ubuntu2.24) ...
#10 56.67 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
#10 56.67 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
#10 56.67 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
#10 56.67 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
#10 56.67 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
#10 56.67 update-alternatives: warning: skip creation of /usr/share/man/da/man1/vi.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group vi) doesn't exist
#10 56.67 update-alternatives: warning: skip creation of /usr/share/man/de/man1/vi.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group vi) doesn't exist
#10 56.67 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
#10 56.67 update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't exist
#10 56.67 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/vi.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group vi) doesn't exist
#10 56.67 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/vi.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group vi) doesn't exist
#10 56.67 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/vi.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group vi) doesn't exist
#10 56.67 update-alternatives: warning: skip creation of /usr/share/man/man1/vi.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group vi) doesn't exist
#10 56.68 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/da/man1/view.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group view) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/de/man1/view.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group view) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
#10 56.68 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 56.68 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 56.68 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 56.69 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 57.21 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 57.28 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 57.32 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 57.32 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 57.32 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 57.32 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 57.33 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 57.33 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 57.33 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 57.34 Setting up python3 (3.10.6-1~22.04.1) ...
#10 57.42 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 57.42 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 57.57 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 57.57 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 57.85 invoke-rc.d: could not determine current runlevel
#10 57.85 invoke-rc.d: policy-rc.d denied execution of start.
#10 57.95 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 58.05 
#10 58.05 Creating config file /etc/ssh/sshd_config with new version
#10 58.07 Creating SSH2 RSA key; this may take some time ...
#10 58.52 3072 SHA256:OJLqMuYinymsFXK0Rk812Jt6yWKd5egA9maii3uIoC0 root@buildkitsandbox (RSA)
#10 58.53 Creating SSH2 ECDSA key; this may take some time ...
#10 58.53 256 SHA256:fxvIhNahQoQ78rB05zz9JK4nUFFTHQvTx/Zh4Xr6thI root@buildkitsandbox (ECDSA)
#10 58.53 Creating SSH2 ED25519 key; this may take some time ...
#10 58.54 256 SHA256:pf1a3C0/O2du6RmfFLzoIhxRllSe6wtgjtwPN5VJIv8 root@buildkitsandbox (ED25519)
#10 58.60 invoke-rc.d: could not determine current runlevel
#10 58.60 invoke-rc.d: policy-rc.d denied execution of start.
#10 58.77 Setting up liberror-perl (0.17029-1) ...
#10 58.78 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 58.78 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 58.80 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 58.80 Updating certificates in /etc/ssl/certs...
#10 59.21 0 added, 0 removed; done.
#10 59.21 Running hooks in /etc/ca-certificates/update.d...
#10 59.21 done.
#10 DONE 59.5s

#12 [stage-1 5/7] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.1s

#13 [stage-1 6/7] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.0s

#14 [stage-1 7/7] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.0s

#15 exporting to image
#15 exporting layers
#15 exporting layers 1.5s done
#15 writing image sha256:e93c8e584921121063cb4866615a186b42d4049835d619c26b2c935229aa6b15 done
#15 naming to ghcr.io/xcq0607/xray:latest done
#15 DONE 1.5s
```

