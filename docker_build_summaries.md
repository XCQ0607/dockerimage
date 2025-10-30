# Docker Build Summaries

## 镜像: rustdesk

### 构建信息
- 目录: rustdesk/
- 完整镜像名: ghcr.io/xcq0607/rustdesk:latest
- 构建状态: ✅ 成功
- 构建耗时: 56s

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
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 15.27 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.27 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.28 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 15.81 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 15.88 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 15.92 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 15.92 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 15.92 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 15.92 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 15.93 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 15.93 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 15.93 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 15.93 Setting up python3 (3.10.6-1~22.04.1) ...
#10 16.02 Setting up binutils (2.38-4ubuntu2.10) ...
#10 16.02 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 16.03 Setting up libexpat1-dev:amd64 (2.4.7-1ubuntu0.6) ...
#10 16.03 Setting up libdpkg-perl (1.21.1ubuntu2.6) ...
#10 16.03 Setting up libstdc++-11-dev:amd64 (11.4.0-1ubuntu1~22.04.2) ...
#10 16.04 Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu9.2) ...
#10 16.04 Setting up gcc-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 16.05 Setting up python3-lib2to3 (3.10.8-1~22.04) ...
#10 16.13 Setting up libmysqlclient-dev (8.0.43-0ubuntu0.22.04.2) ...
#10 16.14 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 16.28 Setting up default-libmysqlclient-dev:amd64 (1.0.8) ...
#10 16.29 Setting up python3-distutils (3.10.8-1~22.04) ...
#10 16.38 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 16.39 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 16.67 invoke-rc.d: could not determine current runlevel
#10 16.67 invoke-rc.d: policy-rc.d denied execution of start.
#10 16.78 Setting up python3-setuptools (59.6.0-1.2ubuntu0.22.04.3) ...
#10 17.05 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 17.15 
#10 17.15 Creating config file /etc/ssh/sshd_config with new version
#10 17.17 Creating SSH2 RSA key; this may take some time ...
#10 17.35 3072 SHA256:PKRw+DzOqZtHCIhH0YrN2eCbCklKPgXCpsZrNyDGpz8 root@buildkitsandbox (RSA)
#10 17.35 Creating SSH2 ECDSA key; this may take some time ...
#10 17.36 256 SHA256:cKXpGDeSf65VBJBDb8iRqTdLS9TT4+pfI0LIS2XAAfs root@buildkitsandbox (ECDSA)
#10 17.36 Creating SSH2 ED25519 key; this may take some time ...
#10 17.37 256 SHA256:EYk+GN8uoAWtZKHoS/6QJ/nEo46LsNyKE4Aq4yGmVvQ root@buildkitsandbox (ED25519)
#10 17.43 invoke-rc.d: could not determine current runlevel
#10 17.43 invoke-rc.d: policy-rc.d denied execution of start.
#10 17.61 Setting up g++-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 17.61 Setting up python3-wheel (0.37.1-2ubuntu0.22.04.1) ...
#10 17.72 Setting up gcc (4:11.2.0-1ubuntu1) ...
#10 17.73 Setting up dpkg-dev (1.21.1ubuntu2.6) ...
#10 17.74 Setting up liberror-perl (0.17029-1) ...
#10 17.74 Setting up pkg-config (0.29.2-1ubuntu3) ...
#10 17.76 Setting up libpython3.10-dev:amd64 (3.10.12-1~22.04.11) ...
#10 17.76 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 17.77 Setting up python3-pip (22.0.2+dfsg-1ubuntu0.7) ...
#10 18.66 Setting up python3.10-dev (3.10.12-1~22.04.11) ...
#10 18.67 Setting up g++ (4:11.2.0-1ubuntu1) ...
#10 18.69 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#10 18.69 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#10 18.69 Setting up build-essential (12.9ubuntu3) ...
#10 18.69 Setting up libpython3-dev:amd64 (3.10.6-1~22.04.1) ...
#10 18.70 Setting up python3-dev (3.10.6-1~22.04.1) ...
#10 18.70 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 18.72 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 18.72 Updating certificates in /etc/ssl/certs...
#10 19.13 0 added, 0 removed; done.
#10 19.13 Running hooks in /etc/ca-certificates/update.d...
#10 19.14 done.
#10 DONE 19.6s

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
#17 writing image sha256:74186b9a20f4657c141fe24eafc65c87db9dafa1b38ed00dffb60a0d332a8f9d done
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
- 构建耗时: 25s

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
#9 10.11 Setting up libcurl4:amd64 (7.81.0-1ubuntu1.21) ...
#9 10.11 Setting up curl (7.81.0-1ubuntu1.21) ...
#9 10.12 Setting up libbpf0:amd64 (1:0.5.0-1ubuntu22.04.1) ...
#9 10.12 Setting up libpython3-stdlib:amd64 (3.10.6-1~22.04.1) ...
#9 10.13 Setting up libpython3.10:amd64 (3.10.12-1~22.04.11) ...
#9 10.13 Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.5) ...
#9 10.13 Setting up vim (2:8.2.3995-1ubuntu2.24) ...
#9 10.14 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
#9 10.14 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
#9 10.14 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
#9 10.14 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
#9 10.14 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
#9 10.14 update-alternatives: warning: skip creation of /usr/share/man/da/man1/vi.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.14 update-alternatives: warning: skip creation of /usr/share/man/de/man1/vi.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.14 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.14 update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.14 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/vi.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.14 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/vi.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.14 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/vi.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.14 update-alternatives: warning: skip creation of /usr/share/man/man1/vi.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.15 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/da/man1/view.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group view) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/de/man1/view.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group view) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
#9 10.15 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.15 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.15 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.16 Setting up python3.10 (3.10.12-1~22.04.11) ...
#9 10.69 Setting up iproute2 (5.15.0-1ubuntu2) ...
#9 10.76 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#9 10.80 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#9 10.80 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#9 10.80 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#9 10.80 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#9 10.81 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#9 10.81 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#9 10.81 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#9 10.81 Setting up python3 (3.10.6-1~22.04.1) ...
#9 10.89 Setting up perl (5.34.0-3ubuntu1.5) ...
#9 10.91 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#9 11.05 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#9 11.06 Setting up supervisor (4.2.1-1ubuntu1) ...
#9 11.34 invoke-rc.d: could not determine current runlevel
#9 11.34 invoke-rc.d: policy-rc.d denied execution of start.
#9 11.45 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#9 11.55 
#9 11.55 Creating config file /etc/ssh/sshd_config with new version
#9 11.57 Creating SSH2 RSA key; this may take some time ...
#9 11.90 3072 SHA256:hk7jx2QJsRVUR/3gRC7KJLwMRk7PiFxGegkdLrVMY+M root@buildkitsandbox (RSA)
#9 11.90 Creating SSH2 ECDSA key; this may take some time ...
#9 11.91 256 SHA256:9YABxurfMTy0KSyT6NcPL5JAxelQLKmsF1lmD+shZP0 root@buildkitsandbox (ECDSA)
#9 11.91 Creating SSH2 ED25519 key; this may take some time ...
#9 11.91 256 SHA256:CIJeJm+FExdmQ6GveBNdGWUxVVMOgPvyhyw7+Twh/wg root@buildkitsandbox (ED25519)
#9 11.98 invoke-rc.d: could not determine current runlevel
#9 11.98 invoke-rc.d: policy-rc.d denied execution of start.
#9 12.15 Setting up liberror-perl (0.17029-1) ...
#9 12.16 Setting up git (1:2.34.1-1ubuntu1.15) ...
#9 12.16 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#9 12.18 Processing triggers for ca-certificates (20240203~22.04.1) ...
#9 12.18 Updating certificates in /etc/ssl/certs...
#9 12.59 0 added, 0 removed; done.
#9 12.59 Running hooks in /etc/ca-certificates/update.d...
#9 12.59 done.
#9 DONE 12.7s

#11 [stage-1 5/7] COPY --from=builder /app/xy /usr/local/bin/xy
#11 DONE 0.1s

#12 [stage-1 6/7] COPY --from=builder /app/td /usr/local/bin/td
#12 DONE 0.0s

#13 [stage-1 7/7] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#13 DONE 0.0s

#14 exporting to image
#14 exporting layers
#14 exporting layers 1.5s done
#14 writing image sha256:de8195b442166938681ade65b2450b0267c9c94abf71dcd1e73d8effd146a794 done
#14 naming to ghcr.io/xcq0607/xray:latest done
#14 DONE 1.5s
```

