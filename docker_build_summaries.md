# Docker Build Summaries

## 镜像: rustdesk

### 构建信息
- 目录: rustdesk/
- 完整镜像名: ghcr.io/xcq0607/rustdesk:latest
- 构建状态: ✅ 成功
- 构建耗时: 54s

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
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 18.35 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 18.35 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 18.36 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 18.88 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 18.95 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 18.99 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 18.99 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 18.99 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 18.99 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 19.00 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 19.00 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 19.00 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 19.00 Setting up python3 (3.10.6-1~22.04.1) ...
#10 19.08 Setting up binutils (2.38-4ubuntu2.10) ...
#10 19.08 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 19.09 Setting up libexpat1-dev:amd64 (2.4.7-1ubuntu0.6) ...
#10 19.09 Setting up libdpkg-perl (1.21.1ubuntu2.6) ...
#10 19.09 Setting up libstdc++-11-dev:amd64 (11.4.0-1ubuntu1~22.04.2) ...
#10 19.10 Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu9.2) ...
#10 19.10 Setting up gcc-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 19.10 Setting up python3-lib2to3 (3.10.8-1~22.04) ...
#10 19.18 Setting up libmysqlclient-dev (8.0.43-0ubuntu0.22.04.2) ...
#10 19.18 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 19.33 Setting up default-libmysqlclient-dev:amd64 (1.0.8) ...
#10 19.33 Setting up python3-distutils (3.10.8-1~22.04) ...
#10 19.42 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 19.43 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 19.70 invoke-rc.d: could not determine current runlevel
#10 19.71 invoke-rc.d: policy-rc.d denied execution of start.
#10 19.81 Setting up python3-setuptools (59.6.0-1.2ubuntu0.22.04.3) ...
#10 20.07 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 20.17 
#10 20.17 Creating config file /etc/ssh/sshd_config with new version
#10 20.19 Creating SSH2 RSA key; this may take some time ...
#10 20.91 3072 SHA256:Fo825Pd66K3mvFKeT27rL+PHYFoezl5CCJK0UJuGyTQ root@buildkitsandbox (RSA)
#10 20.91 Creating SSH2 ECDSA key; this may take some time ...
#10 20.92 256 SHA256:v7K+kQETp2Ck1A9PyNA3gzc0H/BTPB/jkJbE5Vms76c root@buildkitsandbox (ECDSA)
#10 20.92 Creating SSH2 ED25519 key; this may take some time ...
#10 20.93 256 SHA256:coRztdzGcTTZL2wXiOMUlCdnbbPBqIa2tOdZVo4v4jI root@buildkitsandbox (ED25519)
#10 20.99 invoke-rc.d: could not determine current runlevel
#10 20.99 invoke-rc.d: policy-rc.d denied execution of start.
#10 21.16 Setting up g++-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 21.16 Setting up python3-wheel (0.37.1-2ubuntu0.22.04.1) ...
#10 21.27 Setting up gcc (4:11.2.0-1ubuntu1) ...
#10 21.28 Setting up dpkg-dev (1.21.1ubuntu2.6) ...
#10 21.29 Setting up liberror-perl (0.17029-1) ...
#10 21.29 Setting up pkg-config (0.29.2-1ubuntu3) ...
#10 21.31 Setting up libpython3.10-dev:amd64 (3.10.12-1~22.04.11) ...
#10 21.31 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 21.32 Setting up python3-pip (22.0.2+dfsg-1ubuntu0.7) ...
#10 22.19 Setting up python3.10-dev (3.10.12-1~22.04.11) ...
#10 22.19 Setting up g++ (4:11.2.0-1ubuntu1) ...
#10 22.21 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#10 22.21 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#10 22.21 Setting up build-essential (12.9ubuntu3) ...
#10 22.21 Setting up libpython3-dev:amd64 (3.10.6-1~22.04.1) ...
#10 22.22 Setting up python3-dev (3.10.6-1~22.04.1) ...
#10 22.22 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 22.23 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 22.24 Updating certificates in /etc/ssl/certs...
#10 22.65 0 added, 0 removed; done.
#10 22.65 Running hooks in /etc/ca-certificates/update.d...
#10 22.65 done.
#10 DONE 23.7s

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
#17 exporting layers 3.0s done
#17 writing image sha256:aa9c1661d874eb775229670f7fa6b79aba91e721812c5f079d6aca00aa231290 done
#17 naming to ghcr.io/xcq0607/rustdesk:latest done
#17 DONE 3.0s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "SECRET_KEY") (line 26)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "RUSTDESK_KEY") (line 26)
```

## 镜像: xray

### 构建信息
- 目录: xray/
- 完整镜像名: ghcr.io/xcq0607/xray:latest
- 构建状态: ✅ 成功
- 构建耗时: 29s

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
#9 11.38 Setting up libcurl4:amd64 (7.81.0-1ubuntu1.21) ...
#9 11.38 Setting up curl (7.81.0-1ubuntu1.21) ...
#9 11.38 Setting up libbpf0:amd64 (1:0.5.0-1ubuntu22.04.1) ...
#9 11.38 Setting up libpython3-stdlib:amd64 (3.10.6-1~22.04.1) ...
#9 11.39 Setting up libpython3.10:amd64 (3.10.12-1~22.04.11) ...
#9 11.39 Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.5) ...
#9 11.39 Setting up vim (2:8.2.3995-1ubuntu2.24) ...
#9 11.40 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
#9 11.40 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
#9 11.40 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
#9 11.40 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
#9 11.40 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/da/man1/vi.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/de/man1/vi.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/vi.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/vi.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/vi.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/man1/vi.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.40 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/da/man1/view.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group view) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/de/man1/view.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group view) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
#9 11.40 update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
#9 11.41 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.41 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.41 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.41 Setting up python3.10 (3.10.12-1~22.04.11) ...
#9 11.94 Setting up iproute2 (5.15.0-1ubuntu2) ...
#9 12.01 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#9 12.04 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#9 12.04 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#9 12.05 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#9 12.05 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#9 12.05 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#9 12.05 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#9 12.05 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#9 12.06 Setting up python3 (3.10.6-1~22.04.1) ...
#9 12.13 Setting up perl (5.34.0-3ubuntu1.5) ...
#9 12.14 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#9 12.28 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#9 12.28 Setting up supervisor (4.2.1-1ubuntu1) ...
#9 12.56 invoke-rc.d: could not determine current runlevel
#9 12.57 invoke-rc.d: policy-rc.d denied execution of start.
#9 12.67 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#9 12.76 
#9 12.76 Creating config file /etc/ssh/sshd_config with new version
#9 12.78 Creating SSH2 RSA key; this may take some time ...
#9 13.56 3072 SHA256:mSOJqgKxmpy1ND60YGety6bdSODaLixb3zawWnLM3Yo root@buildkitsandbox (RSA)
#9 13.56 Creating SSH2 ECDSA key; this may take some time ...
#9 13.57 256 SHA256:FQcWxsdwSleMMXht0V4BN1faw+sD3G13i8cJvHwLnFk root@buildkitsandbox (ECDSA)
#9 13.57 Creating SSH2 ED25519 key; this may take some time ...
#9 13.58 256 SHA256:w0fzWWZN1M4kYW28ymHiSqQQuuVMdbFuX2fKWgMp/e0 root@buildkitsandbox (ED25519)
#9 13.63 invoke-rc.d: could not determine current runlevel
#9 13.64 invoke-rc.d: policy-rc.d denied execution of start.
#9 13.81 Setting up liberror-perl (0.17029-1) ...
#9 13.81 Setting up git (1:2.34.1-1ubuntu1.15) ...
#9 13.82 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#9 13.83 Processing triggers for ca-certificates (20240203~22.04.1) ...
#9 13.83 Updating certificates in /etc/ssl/certs...
#9 14.24 0 added, 0 removed; done.
#9 14.24 Running hooks in /etc/ca-certificates/update.d...
#9 14.24 done.
#9 DONE 14.4s

#11 [stage-1 5/7] COPY --from=builder /app/xy /usr/local/bin/xy
#11 DONE 0.0s

#12 [stage-1 6/7] COPY --from=builder /app/td /usr/local/bin/td
#12 DONE 0.0s

#13 [stage-1 7/7] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#13 DONE 0.0s

#14 exporting to image
#14 exporting layers
#14 exporting layers 1.4s done
#14 writing image sha256:c1958b7a037c11977f6f0df91eebb9185d14c3ca7708da76dcc0901b09b67d96 done
#14 naming to ghcr.io/xcq0607/xray:latest done
#14 DONE 1.4s
```

