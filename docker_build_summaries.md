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
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 16.65 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.65 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 16.66 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 17.21 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 17.28 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 17.32 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 17.32 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 17.32 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 17.32 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 17.33 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 17.33 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 17.33 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 17.33 Setting up python3 (3.10.6-1~22.04.1) ...
#10 17.41 Setting up binutils (2.38-4ubuntu2.10) ...
#10 17.41 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 17.42 Setting up libexpat1-dev:amd64 (2.4.7-1ubuntu0.6) ...
#10 17.42 Setting up libdpkg-perl (1.21.1ubuntu2.6) ...
#10 17.43 Setting up libstdc++-11-dev:amd64 (11.4.0-1ubuntu1~22.04.2) ...
#10 17.43 Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu9.2) ...
#10 17.43 Setting up gcc-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 17.43 Setting up python3-lib2to3 (3.10.8-1~22.04) ...
#10 17.52 Setting up libmysqlclient-dev (8.0.43-0ubuntu0.22.04.2) ...
#10 17.52 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 17.67 Setting up default-libmysqlclient-dev:amd64 (1.0.8) ...
#10 17.68 Setting up python3-distutils (3.10.8-1~22.04) ...
#10 17.78 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 17.78 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 18.07 invoke-rc.d: could not determine current runlevel
#10 18.07 invoke-rc.d: policy-rc.d denied execution of start.
#10 18.18 Setting up python3-setuptools (59.6.0-1.2ubuntu0.22.04.3) ...
#10 18.46 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 18.56 
#10 18.56 Creating config file /etc/ssh/sshd_config with new version
#10 18.58 Creating SSH2 RSA key; this may take some time ...
#10 19.59 3072 SHA256:nj4i79JMASLiUUjvjDR2F087351a4YJ7k7L7/bYDkZQ root@buildkitsandbox (RSA)
#10 19.59 Creating SSH2 ECDSA key; this may take some time ...
#10 19.60 256 SHA256:HjiLnCldcpQgl5lQF0RjpAGIVxoI6Q/jLCL+CvpDFEs root@buildkitsandbox (ECDSA)
#10 19.60 Creating SSH2 ED25519 key; this may take some time ...
#10 19.60 256 SHA256:S6fGeuHEyk5HrNUyE/F4EjVRotfy5FNdw0F5O9JzHMI root@buildkitsandbox (ED25519)
#10 19.66 invoke-rc.d: could not determine current runlevel
#10 19.67 invoke-rc.d: policy-rc.d denied execution of start.
#10 19.85 Setting up g++-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 19.85 Setting up python3-wheel (0.37.1-2ubuntu0.22.04.1) ...
#10 19.96 Setting up gcc (4:11.2.0-1ubuntu1) ...
#10 19.97 Setting up dpkg-dev (1.21.1ubuntu2.6) ...
#10 19.97 Setting up liberror-perl (0.17029-1) ...
#10 19.98 Setting up pkg-config (0.29.2-1ubuntu3) ...
#10 20.00 Setting up libpython3.10-dev:amd64 (3.10.12-1~22.04.11) ...
#10 20.00 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 20.01 Setting up python3-pip (22.0.2+dfsg-1ubuntu0.7) ...
#10 20.95 Setting up python3.10-dev (3.10.12-1~22.04.11) ...
#10 20.95 Setting up g++ (4:11.2.0-1ubuntu1) ...
#10 20.97 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#10 20.97 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#10 20.97 Setting up build-essential (12.9ubuntu3) ...
#10 20.98 Setting up libpython3-dev:amd64 (3.10.6-1~22.04.1) ...
#10 20.98 Setting up python3-dev (3.10.6-1~22.04.1) ...
#10 20.98 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 21.00 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 21.00 Updating certificates in /etc/ssl/certs...
#10 21.43 0 added, 0 removed; done.
#10 21.43 Running hooks in /etc/ca-certificates/update.d...
#10 21.43 done.
#10 DONE 22.1s

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
#17 writing image sha256:d6e1ee0702d3dbd89e8bf53834f31384a639c41e56e59125474d71d86de912fa done
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
- 构建耗时: 28s

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
#9 11.41 Setting up libcurl4:amd64 (7.81.0-1ubuntu1.21) ...
#9 11.41 Setting up curl (7.81.0-1ubuntu1.21) ...
#9 11.41 Setting up libbpf0:amd64 (1:0.5.0-1ubuntu22.04.1) ...
#9 11.41 Setting up libpython3-stdlib:amd64 (3.10.6-1~22.04.1) ...
#9 11.41 Setting up libpython3.10:amd64 (3.10.12-1~22.04.11) ...
#9 11.42 Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.5) ...
#9 11.42 Setting up vim (2:8.2.3995-1ubuntu2.24) ...
#9 11.42 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
#9 11.42 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
#9 11.43 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
#9 11.43 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
#9 11.43 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/da/man1/vi.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/de/man1/vi.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/vi.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/vi.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/vi.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/man1/vi.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group vi) doesn't exist
#9 11.43 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/da/man1/view.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group view) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/de/man1/view.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group view) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
#9 11.43 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#9 11.43 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.43 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#9 11.44 Setting up python3.10 (3.10.12-1~22.04.11) ...
#9 11.97 Setting up iproute2 (5.15.0-1ubuntu2) ...
#9 12.04 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#9 12.08 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#9 12.08 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#9 12.08 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#9 12.08 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#9 12.08 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#9 12.08 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#9 12.09 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#9 12.09 Setting up python3 (3.10.6-1~22.04.1) ...
#9 12.17 Setting up perl (5.34.0-3ubuntu1.5) ...
#9 12.17 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#9 12.32 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#9 12.32 Setting up supervisor (4.2.1-1ubuntu1) ...
#9 12.61 invoke-rc.d: could not determine current runlevel
#9 12.61 invoke-rc.d: policy-rc.d denied execution of start.
#9 12.72 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#9 12.82 
#9 12.82 Creating config file /etc/ssh/sshd_config with new version
#9 12.84 Creating SSH2 RSA key; this may take some time ...
#9 13.27 3072 SHA256:362DvK1gjzH/2jBdSZZ1gKgyp839BJwFofGohy8Nr5A root@buildkitsandbox (RSA)
#9 13.28 Creating SSH2 ECDSA key; this may take some time ...
#9 13.28 256 SHA256:CkxzNRnEZSlxRZadenVvzpt2SLzYD9D502Yj1AB9Oqg root@buildkitsandbox (ECDSA)
#9 13.28 Creating SSH2 ED25519 key; this may take some time ...
#9 13.29 256 SHA256:9t+q5BZQ9iEHZnNzEU5Ugpuy2OZqE4R+DJS2hDTuNYk root@buildkitsandbox (ED25519)
#9 13.35 invoke-rc.d: could not determine current runlevel
#9 13.35 invoke-rc.d: policy-rc.d denied execution of start.
#9 13.53 Setting up liberror-perl (0.17029-1) ...
#9 13.53 Setting up git (1:2.34.1-1ubuntu1.15) ...
#9 13.54 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#9 13.55 Processing triggers for ca-certificates (20240203~22.04.1) ...
#9 13.55 Updating certificates in /etc/ssl/certs...
#9 13.97 0 added, 0 removed; done.
#9 13.97 Running hooks in /etc/ca-certificates/update.d...
#9 13.97 done.
#9 DONE 14.1s

#11 [stage-1 5/7] COPY --from=builder /app/xy /usr/local/bin/xy
#11 DONE 0.0s

#12 [stage-1 6/7] COPY --from=builder /app/td /usr/local/bin/td
#12 DONE 0.0s

#13 [stage-1 7/7] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#13 DONE 0.0s

#14 exporting to image
#14 exporting layers
#14 exporting layers 1.5s done
#14 writing image sha256:3ec18a7393d85a4fe808fbfdbdaeb0370654d4703ad2096de0cec467fba87ae8 done
#14 naming to ghcr.io/xcq0607/xray:latest done
#14 DONE 1.5s
```

