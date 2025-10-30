# Docker Build Summaries

## 镜像: rustdesk

### 构建信息
- 目录: rustdesk/
- 完整镜像名: ghcr.io/xcq0607/rustdesk:latest
- 构建状态: ✅ 成功
- 构建耗时: 57s

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
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 16.00 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.00 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.01 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 16.54 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 16.61 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 16.65 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 16.65 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 16.65 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 16.66 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 16.66 Setting up python3 (3.10.6-1~22.04.1) ...
#10 16.74 Setting up binutils (2.38-4ubuntu2.10) ...
#10 16.74 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 16.75 Setting up libexpat1-dev:amd64 (2.4.7-1ubuntu0.6) ...
#10 16.75 Setting up libdpkg-perl (1.21.1ubuntu2.6) ...
#10 16.75 Setting up libstdc++-11-dev:amd64 (11.4.0-1ubuntu1~22.04.2) ...
#10 16.76 Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu9.2) ...
#10 16.76 Setting up gcc-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 16.76 Setting up python3-lib2to3 (3.10.8-1~22.04) ...
#10 16.84 Setting up libmysqlclient-dev (8.0.43-0ubuntu0.22.04.2) ...
#10 16.85 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 16.99 Setting up default-libmysqlclient-dev:amd64 (1.0.8) ...
#10 16.99 Setting up python3-distutils (3.10.8-1~22.04) ...
#10 17.09 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 17.09 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 17.37 invoke-rc.d: could not determine current runlevel
#10 17.38 invoke-rc.d: policy-rc.d denied execution of start.
#10 17.48 Setting up python3-setuptools (59.6.0-1.2ubuntu0.22.04.3) ...
#10 17.75 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 17.84 
#10 17.84 Creating config file /etc/ssh/sshd_config with new version
#10 17.87 Creating SSH2 RSA key; this may take some time ...
#10 18.31 3072 SHA256:TqCdVqiPnJidWB4DY8DoHLmPtSRf7CSehCz1Llfl21U root@buildkitsandbox (RSA)
#10 18.31 Creating SSH2 ECDSA key; this may take some time ...
#10 18.32 256 SHA256:DWBps3uJHqT/t8KdAgP4L8hk/SeWRV0c3eti5wodOVU root@buildkitsandbox (ECDSA)
#10 18.32 Creating SSH2 ED25519 key; this may take some time ...
#10 18.33 256 SHA256:+AM/DyHONUxkEwdIP0DQbxi/r7sEwxPWcbQoUVYQ5PE root@buildkitsandbox (ED25519)
#10 18.39 invoke-rc.d: could not determine current runlevel
#10 18.39 invoke-rc.d: policy-rc.d denied execution of start.
#10 18.57 Setting up g++-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 18.57 Setting up python3-wheel (0.37.1-2ubuntu0.22.04.1) ...
#10 18.68 Setting up gcc (4:11.2.0-1ubuntu1) ...
#10 18.69 Setting up dpkg-dev (1.21.1ubuntu2.6) ...
#10 18.69 Setting up liberror-perl (0.17029-1) ...
#10 18.70 Setting up pkg-config (0.29.2-1ubuntu3) ...
#10 18.72 Setting up libpython3.10-dev:amd64 (3.10.12-1~22.04.11) ...
#10 18.72 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 18.73 Setting up python3-pip (22.0.2+dfsg-1ubuntu0.7) ...
#10 19.60 Setting up python3.10-dev (3.10.12-1~22.04.11) ...
#10 19.61 Setting up g++ (4:11.2.0-1ubuntu1) ...
#10 19.63 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#10 19.63 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#10 19.63 Setting up build-essential (12.9ubuntu3) ...
#10 19.63 Setting up libpython3-dev:amd64 (3.10.6-1~22.04.1) ...
#10 19.63 Setting up python3-dev (3.10.6-1~22.04.1) ...
#10 19.64 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 19.65 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 19.66 Updating certificates in /etc/ssl/certs...
#10 20.07 0 added, 0 removed; done.
#10 20.07 Running hooks in /etc/ca-certificates/update.d...
#10 20.07 done.
#10 DONE 21.0s

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
#17 writing image sha256:50b81663c55e3f9dc9c781082c427cc8dddd88e7f38eda2417dc26af9514afe9 done
#17 naming to ghcr.io/xcq0607/rustdesk:latest done
#17 DONE 3.1s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "RUSTDESK_KEY") (line 26)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "SECRET_KEY") (line 26)
```

## 镜像: xray

### 构建信息
- 目录: xray/
- 完整镜像名: ghcr.io/xcq0607/xray:latest
- 构建状态: ✅ 成功
- 构建耗时: 31s

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
#9 14.18 Setting up libcurl4:amd64 (7.81.0-1ubuntu1.21) ...
#9 14.18 Setting up curl (7.81.0-1ubuntu1.21) ...
#9 14.19 Setting up libbpf0:amd64 (1:0.5.0-1ubuntu22.04.1) ...
#9 14.19 Setting up libpython3-stdlib:amd64 (3.10.6-1~22.04.1) ...
#9 14.20 Setting up libpython3.10:amd64 (3.10.12-1~22.04.11) ...
#9 14.20 Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.5) ...
#9 14.20 Setting up vim (2:8.2.3995-1ubuntu2.24) ...
#9 14.21 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
#9 14.21 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
#9 14.21 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
#9 14.21 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
#9 14.21 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
#9 14.21 update-alternatives: warning: skip creation of /usr/share/man/da/man1/vi.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group vi) doesn't exist
#9 14.21 update-alternatives: warning: skip creation of /usr/share/man/de/man1/vi.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group vi) doesn't exist
#9 14.21 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
#9 14.21 update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't exist
#9 14.21 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/vi.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group vi) doesn't exist
#9 14.21 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/vi.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group vi) doesn't exist
#9 14.21 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/vi.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group vi) doesn't exist
#9 14.21 update-alternatives: warning: skip creation of /usr/share/man/man1/vi.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group vi) doesn't exist
#9 14.22 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/da/man1/view.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group view) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/de/man1/view.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group view) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
#9 14.22 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#9 14.22 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#9 14.22 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#9 14.22 Setting up python3.10 (3.10.12-1~22.04.11) ...
#9 14.76 Setting up iproute2 (5.15.0-1ubuntu2) ...
#9 14.83 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#9 14.87 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#9 14.87 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#9 14.87 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#9 14.87 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#9 14.87 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#9 14.87 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#9 14.88 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#9 14.88 Setting up python3 (3.10.6-1~22.04.1) ...
#9 14.96 Setting up perl (5.34.0-3ubuntu1.5) ...
#9 14.97 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#9 15.11 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#9 15.12 Setting up supervisor (4.2.1-1ubuntu1) ...
#9 15.40 invoke-rc.d: could not determine current runlevel
#9 15.40 invoke-rc.d: policy-rc.d denied execution of start.
#9 15.51 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#9 15.61 
#9 15.61 Creating config file /etc/ssh/sshd_config with new version
#9 15.63 Creating SSH2 RSA key; this may take some time ...
#9 16.34 3072 SHA256:LM+5puJ5uZky8hp/5wu6p+2sY5YFdBl0k7jyTLrm7AU root@buildkitsandbox (RSA)
#9 16.35 Creating SSH2 ECDSA key; this may take some time ...
#9 16.35 256 SHA256:xvQcZA8AAuh+w3+zJX7e04rKfYOzgzKwRxNn4fHa1KQ root@buildkitsandbox (ECDSA)
#9 16.35 Creating SSH2 ED25519 key; this may take some time ...
#9 16.36 256 SHA256:1w1qQEMZlWTkEVK9tduSSfVvY1CLvCdz+mw0SuzqlGM root@buildkitsandbox (ED25519)
#9 16.42 invoke-rc.d: could not determine current runlevel
#9 16.42 invoke-rc.d: policy-rc.d denied execution of start.
#9 16.60 Setting up liberror-perl (0.17029-1) ...
#9 16.60 Setting up git (1:2.34.1-1ubuntu1.15) ...
#9 16.61 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#9 16.63 Processing triggers for ca-certificates (20240203~22.04.1) ...
#9 16.63 Updating certificates in /etc/ssl/certs...
#9 17.05 0 added, 0 removed; done.
#9 17.05 Running hooks in /etc/ca-certificates/update.d...
#9 17.05 done.
#9 DONE 17.3s

#11 [stage-1 5/7] COPY --from=builder /app/xy /usr/local/bin/xy
#11 DONE 0.1s

#12 [stage-1 6/7] COPY --from=builder /app/td /usr/local/bin/td
#12 DONE 0.0s

#13 [stage-1 7/7] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#13 DONE 0.0s

#14 exporting to image
#14 exporting layers
#14 exporting layers 1.5s done
#14 writing image sha256:e64aac8a269e2c58f556e5d08705cfdcf205907c730c44c8a8ffb9471c113ea5 done
#14 naming to ghcr.io/xcq0607/xray:latest done
#14 DONE 1.5s
```

