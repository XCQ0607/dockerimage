# Docker Build Summaries

## 镜像: rustdesk

### 构建信息
- 目录: rustdesk/
- 完整镜像名: ghcr.io/xcq0607/rustdesk:latest
- 构建状态: ✅ 成功
- 构建耗时: 49s

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
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 15.41 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 15.42 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 15.95 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 16.02 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 16.05 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 16.05 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 16.06 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 16.06 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 16.06 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 16.06 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 16.06 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 16.07 Setting up python3 (3.10.6-1~22.04.1) ...
#10 16.14 Setting up binutils (2.38-4ubuntu2.10) ...
#10 16.14 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 16.15 Setting up libexpat1-dev:amd64 (2.4.7-1ubuntu0.6) ...
#10 16.15 Setting up libdpkg-perl (1.21.1ubuntu2.6) ...
#10 16.16 Setting up libstdc++-11-dev:amd64 (11.4.0-1ubuntu1~22.04.2) ...
#10 16.16 Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu9.2) ...
#10 16.16 Setting up gcc-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 16.16 Setting up python3-lib2to3 (3.10.8-1~22.04) ...
#10 16.25 Setting up libmysqlclient-dev (8.0.43-0ubuntu0.22.04.2) ...
#10 16.25 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 16.40 Setting up default-libmysqlclient-dev:amd64 (1.0.8) ...
#10 16.40 Setting up python3-distutils (3.10.8-1~22.04) ...
#10 16.50 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 16.50 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 16.78 invoke-rc.d: could not determine current runlevel
#10 16.79 invoke-rc.d: policy-rc.d denied execution of start.
#10 16.89 Setting up python3-setuptools (59.6.0-1.2ubuntu0.22.04.3) ...
#10 17.17 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 17.26 
#10 17.26 Creating config file /etc/ssh/sshd_config with new version
#10 17.29 Creating SSH2 RSA key; this may take some time ...
#10 18.08 3072 SHA256:5L5DoXh96kXebH/azQmEKHS6uKVHQJ+/ikVAKrxSzM8 root@buildkitsandbox (RSA)
#10 18.08 Creating SSH2 ECDSA key; this may take some time ...
#10 18.09 256 SHA256:6xfDA2jWqsRdj0zJX3lHEwweKjH7/gvqQ6J4nDPmLGg root@buildkitsandbox (ECDSA)
#10 18.09 Creating SSH2 ED25519 key; this may take some time ...
#10 18.10 256 SHA256:ZzVyzrWdfS3KdgODmkxega3SxOzRPIaLKNjB/1FAms4 root@buildkitsandbox (ED25519)
#10 18.16 invoke-rc.d: could not determine current runlevel
#10 18.16 invoke-rc.d: policy-rc.d denied execution of start.
#10 18.34 Setting up g++-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 18.34 Setting up python3-wheel (0.37.1-2ubuntu0.22.04.1) ...
#10 18.45 Setting up gcc (4:11.2.0-1ubuntu1) ...
#10 18.46 Setting up dpkg-dev (1.21.1ubuntu2.6) ...
#10 18.46 Setting up liberror-perl (0.17029-1) ...
#10 18.46 Setting up pkg-config (0.29.2-1ubuntu3) ...
#10 18.48 Setting up libpython3.10-dev:amd64 (3.10.12-1~22.04.11) ...
#10 18.48 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 18.50 Setting up python3-pip (22.0.2+dfsg-1ubuntu0.7) ...
#10 19.38 Setting up python3.10-dev (3.10.12-1~22.04.11) ...
#10 19.38 Setting up g++ (4:11.2.0-1ubuntu1) ...
#10 19.40 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#10 19.40 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#10 19.40 Setting up build-essential (12.9ubuntu3) ...
#10 19.40 Setting up libpython3-dev:amd64 (3.10.6-1~22.04.1) ...
#10 19.40 Setting up python3-dev (3.10.6-1~22.04.1) ...
#10 19.41 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 19.42 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 19.43 Updating certificates in /etc/ssl/certs...
#10 19.85 0 added, 0 removed; done.
#10 19.85 Running hooks in /etc/ca-certificates/update.d...
#10 19.85 done.
#10 DONE 20.8s

#12 [stage-1 5/9] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.1s

#13 [stage-1 6/9] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.0s

#14 [stage-1 7/9] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.1s

#15 [stage-1 8/9] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 DONE 0.1s

#16 [stage-1 9/9] RUN chmod +x /app/rustdesk-api/*.sh && chmod +x /app/rustdesk-server/*.sh
#16 DONE 0.1s

#17 exporting to image
#17 exporting layers
#17 exporting layers 3.1s done
#17 writing image sha256:927e7194ae51d61859c72204affc04da92325e8f953fcb08224714cf85f815f9 done
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
#11 15.31 Setting up python3.10 (3.10.12-1~22.04.11) ...
#11 15.85 Setting up iptables (1.8.7-1ubuntu5.2) ...
#11 15.85 update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
#11 15.86 update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 15.86 update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
#11 15.86 update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 15.86 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#11 15.86 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#11 15.86 Setting up iproute2 (5.15.0-1ubuntu2) ...
#11 15.93 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#11 15.97 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#11 15.97 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#11 15.97 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#11 15.97 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#11 15.98 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#11 15.98 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#11 15.98 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#11 15.98 Setting up python3 (3.10.6-1~22.04.1) ...
#11 16.06 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#11 16.13 Adding group `docker' (GID 102) ...
#11 16.14 Done.
#11 16.34 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#11 16.34 invoke-rc.d: could not determine current runlevel
#11 16.35 Setting up python3-six (1.16.0-3ubuntu1) ...
#11 16.46 Setting up perl (5.34.0-3ubuntu1.5) ...
#11 16.46 Setting up python3-dateutil (2.8.1-6) ...
#11 16.60 Setting up python3-magic (2:0.4.24-2) ...
#11 16.70 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#11 16.85 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#11 16.85 Setting up supervisor (4.2.1-1ubuntu1) ...
#11 17.14 invoke-rc.d: could not determine current runlevel
#11 17.14 invoke-rc.d: policy-rc.d denied execution of start.
#11 17.24 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#11 17.34 
#11 17.34 Creating config file /etc/ssh/sshd_config with new version
#11 17.37 Creating SSH2 RSA key; this may take some time ...
#11 18.03 3072 SHA256:M1FfMlbfU8mkeB9TBOy1Y+kwub3Uvco9eAEjs7N2R/s root@buildkitsandbox (RSA)
#11 18.04 Creating SSH2 ECDSA key; this may take some time ...
#11 18.04 256 SHA256:xSFj1rQjF+HrB6iKk2u6UuUmHb+mxV8Pa1nSq6ryhJY root@buildkitsandbox (ECDSA)
#11 18.04 Creating SSH2 ED25519 key; this may take some time ...
#11 18.05 256 SHA256:3XyN20wdONQjcLaTaC4Fn1GJS5TJbepoqiJ5SfYA5n8 root@buildkitsandbox (ED25519)
#11 18.11 invoke-rc.d: could not determine current runlevel
#11 18.11 invoke-rc.d: policy-rc.d denied execution of start.
#11 18.29 Setting up s3cmd (2.2.0-1) ...
#11 18.42 Setting up liberror-perl (0.17029-1) ...
#11 18.42 Setting up git (1:2.34.1-1ubuntu1.15) ...
#11 18.43 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#11 18.44 Processing triggers for ca-certificates (20240203~22.04.1) ...
#11 18.44 Updating certificates in /etc/ssl/certs...
#11 18.86 0 added, 0 removed; done.
#11 18.86 Running hooks in /etc/ca-certificates/update.d...
#11 18.86 done.
#11 18.94 useradd: warning: the home directory /home/user already exists.
#11 18.94 useradd: Not copying any file from skel directory into it.
#11 DONE 19.8s

#12 [stage-1  6/10] RUN /install.sh
#12 0.811   ┌────────────────────────────────────────────────────────────────┐ 
#12 0.811   │              vocechat-server v0.4.2 installation guide         │ 
#12 0.811   └────────────────────────────────────────────────────────────────┘ 
#12 0.815 
#12 0.815 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#12 0.815 
#12 0.819 Reading package lists...
#12 0.828 Building dependency tree...
#12 0.828 Reading state information...
#12 0.829 E: Unable to locate package libssl-dev
#12 0.830 
#12 0.831 -e Detected platform: [31mx86_64-unknown-linux-musl[0m.
#12 0.831 Downloading URL: https://sh.voce.chat/vocechat-server-v0.4.2-x86_64-unknown-linux-musl.zip
#12 0.937 #=#=#                                                                         ##O#-#                                                                        ##O=#  #                                                                      #=#=-#  #                                                                     -#O#- #   #                                                                   -=#=#   #   #                                                                                                                                            0.1%                                                                           0.2%                                                                           0.4%                                                                           0.6%                                                                           0.9%#                                                                          1.4%#                                                                          2.2%##                                                                         3.3%###                                                                        5.1%#####                                                                      7.7%########                                                                  11.8%#############                                                             18.2%####################                                                      27.9%##############################                                            42.8%#########################################                                 57.9%#####################################################                     74.9%###############################################################           88.5%######################################################################## 100.0%
#12 3.944   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#12 3.944                                  Dload  Upload   Total   Spent    Left  Speed
#12 3.944   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100   634  100   634    0     0    934      0 --:--:-- --:--:-- --:--:--   933
#12 4.626 
#12 4.628 Docker environment detected. Skipping service installation.
#12 DONE 4.7s

#13 [stage-1  7/10] COPY --from=builder /app/xy /usr/local/bin/xy
#13 DONE 0.0s

#14 [stage-1  8/10] COPY --from=builder /app/td /usr/local/bin/td
#14 DONE 0.0s

#15 [stage-1  9/10] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#15 DONE 0.0s

#16 [stage-1 10/10] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#16 DONE 0.0s

#17 exporting to image
#17 exporting layers
#17 exporting layers 2.4s done
#17 writing image sha256:19b98ee6237f690f43c319714b63f3cc5ad02541f553223d1a349f07b16ea6da done
#17 naming to ghcr.io/xcq0607/voce:latest done
#17 DONE 2.4s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 27)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 27)
```

