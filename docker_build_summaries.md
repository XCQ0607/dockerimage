# Docker Build Summaries

## 镜像: rustdesk

### 构建信息
- 目录: rustdesk/
- 完整镜像名: ghcr.io/xcq0607/rustdesk:latest
- 构建状态: ✅ 成功
- 构建耗时: 58s

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
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#11 20.31 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#11 20.31 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#11 20.31 Setting up python3.10 (3.10.12-1~22.04.11) ...
#11 20.85 Setting up iproute2 (5.15.0-1ubuntu2) ...
#11 20.91 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#11 20.95 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#11 20.95 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#11 20.95 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#11 20.95 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#11 20.96 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#11 20.96 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#11 20.96 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#11 20.96 Setting up python3 (3.10.6-1~22.04.1) ...
#11 21.04 Setting up binutils (2.38-4ubuntu2.10) ...
#11 21.04 Setting up perl (5.34.0-3ubuntu1.5) ...
#11 21.05 Setting up libexpat1-dev:amd64 (2.4.7-1ubuntu0.6) ...
#11 21.05 Setting up libdpkg-perl (1.21.1ubuntu2.6) ...
#11 21.05 Setting up libstdc++-11-dev:amd64 (11.4.0-1ubuntu1~22.04.2) ...
#11 21.06 Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu9.2) ...
#11 21.06 Setting up gcc-11 (11.4.0-1ubuntu1~22.04.2) ...
#11 21.06 Setting up python3-lib2to3 (3.10.8-1~22.04) ...
#11 21.14 Setting up libmysqlclient-dev (8.0.43-0ubuntu0.22.04.2) ...
#11 21.15 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#11 21.29 Setting up default-libmysqlclient-dev:amd64 (1.0.8) ...
#11 21.30 Setting up python3-distutils (3.10.8-1~22.04) ...
#11 21.39 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#11 21.39 Setting up supervisor (4.2.1-1ubuntu1) ...
#11 21.68 invoke-rc.d: could not determine current runlevel
#11 21.68 invoke-rc.d: policy-rc.d denied execution of start.
#11 21.79 Setting up python3-setuptools (59.6.0-1.2ubuntu0.22.04.3) ...
#11 22.06 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#11 22.15 
#11 22.15 Creating config file /etc/ssh/sshd_config with new version
#11 22.18 Creating SSH2 RSA key; this may take some time ...
#11 22.80 3072 SHA256:FFvvPfjee4hnjrKmMs2D705XLpdrUzTs7O9w3Ot9bLA root@buildkitsandbox (RSA)
#11 22.81 Creating SSH2 ECDSA key; this may take some time ...
#11 22.81 256 SHA256:Np36H9W7Q8FPTcRh0h06R5MulrCRL8Yi0CdCOl9GImg root@buildkitsandbox (ECDSA)
#11 22.82 Creating SSH2 ED25519 key; this may take some time ...
#11 22.82 256 SHA256:HHilDDDSt/ySORntatjH/eOu/R6yXaqPerJq6I3zDdQ root@buildkitsandbox (ED25519)
#11 22.88 invoke-rc.d: could not determine current runlevel
#11 22.88 invoke-rc.d: policy-rc.d denied execution of start.
#11 23.06 Setting up g++-11 (11.4.0-1ubuntu1~22.04.2) ...
#11 23.06 Setting up python3-wheel (0.37.1-2ubuntu0.22.04.1) ...
#11 23.17 Setting up gcc (4:11.2.0-1ubuntu1) ...
#11 23.18 Setting up dpkg-dev (1.21.1ubuntu2.6) ...
#11 23.19 Setting up liberror-perl (0.17029-1) ...
#11 23.19 Setting up pkg-config (0.29.2-1ubuntu3) ...
#11 23.21 Setting up libpython3.10-dev:amd64 (3.10.12-1~22.04.11) ...
#11 23.21 Setting up git (1:2.34.1-1ubuntu1.15) ...
#11 23.22 Setting up python3-pip (22.0.2+dfsg-1ubuntu0.7) ...
#11 24.10 Setting up python3.10-dev (3.10.12-1~22.04.11) ...
#11 24.10 Setting up g++ (4:11.2.0-1ubuntu1) ...
#11 24.12 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#11 24.12 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#11 24.12 Setting up build-essential (12.9ubuntu3) ...
#11 24.12 Setting up libpython3-dev:amd64 (3.10.6-1~22.04.1) ...
#11 24.13 Setting up python3-dev (3.10.6-1~22.04.1) ...
#11 24.13 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#11 24.14 Processing triggers for ca-certificates (20240203~22.04.1) ...
#11 24.15 Updating certificates in /etc/ssl/certs...
#11 24.57 0 added, 0 removed; done.
#11 24.57 Running hooks in /etc/ca-certificates/update.d...
#11 24.57 done.
#11 DONE 25.6s

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
#17 writing image sha256:593581ac75b4a8c79f3f8853155577ff89de5d9cc1fe3e7889553ad58a6efa35 done
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
- 构建耗时: 50s

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
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
#10 14.93 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.93 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.93 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.94 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 15.47 Setting up iptables (1.8.7-1ubuntu5.2) ...
#10 15.47 update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
#10 15.47 update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#10 15.47 update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
#10 15.47 update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#10 15.48 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#10 15.48 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#10 15.49 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 15.56 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 15.59 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 15.59 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 15.60 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 15.60 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 15.60 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 15.60 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 15.60 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 15.61 Setting up python3 (3.10.6-1~22.04.1) ...
#10 15.68 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#10 15.75 Adding group `docker' (GID 102) ...
#10 15.76 Done.
#10 15.96 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#10 15.96 invoke-rc.d: could not determine current runlevel
#10 15.97 Setting up python3-six (1.16.0-3ubuntu1) ...
#10 16.07 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 16.07 Setting up python3-dateutil (2.8.1-6) ...
#10 16.20 Setting up python3-magic (2:0.4.24-2) ...
#10 16.30 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 16.44 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 16.44 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 16.72 invoke-rc.d: could not determine current runlevel
#10 16.73 invoke-rc.d: policy-rc.d denied execution of start.
#10 16.83 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 16.92 
#10 16.92 Creating config file /etc/ssh/sshd_config with new version
#10 16.95 Creating SSH2 RSA key; this may take some time ...
#10 17.69 3072 SHA256:YUyQi3Lx7fci5D+SFvFxDBU3/nNXXb6OeGIE8MTSTQI root@buildkitsandbox (RSA)
#10 17.69 Creating SSH2 ECDSA key; this may take some time ...
#10 17.69 256 SHA256:8bEu5yK756YwGSNwB1QtEx6x6rvhnNixT/Ay81IjsOQ root@buildkitsandbox (ECDSA)
#10 17.70 Creating SSH2 ED25519 key; this may take some time ...
#10 17.70 256 SHA256:8/U2YZfP8+8RaYdP5dkcn7ibdrYo0/3FXdLqAlMREaA root@buildkitsandbox (ED25519)
#10 17.76 invoke-rc.d: could not determine current runlevel
#10 17.76 invoke-rc.d: policy-rc.d denied execution of start.
#10 17.94 Setting up s3cmd (2.2.0-1) ...
#10 18.07 Setting up liberror-perl (0.17029-1) ...
#10 18.07 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 18.08 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 18.09 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 18.09 Updating certificates in /etc/ssl/certs...
#10 18.50 0 added, 0 removed; done.
#10 18.50 Running hooks in /etc/ca-certificates/update.d...
#10 18.50 done.
#10 DONE 19.5s

#11 [stage-1 5/8] COPY --from=builder /app/xy /usr/local/bin/xy
#11 DONE 0.1s

#12 [stage-1 6/8] COPY --from=builder /app/td /usr/local/bin/td
#12 DONE 0.0s

#13 [stage-1 7/8] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#13 DONE 0.0s

#14 [stage-1 8/8] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#14 DONE 0.1s

#15 exporting to image
#15 exporting layers
#15 exporting layers 2.1s done
#15 writing image sha256:c782ac54f84f55254bbac726a0e49a5ad4b2661e4ef43c675dd0731ec720bc57 done
#15 naming to ghcr.io/xcq0607/voce:latest done
#15 DONE 2.1s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 27)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 27)
```

