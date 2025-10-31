# Docker Build Summaries

## 镜像: rustdesk

### 构建信息
- 目录: rustdesk/
- 完整镜像名: ghcr.io/xcq0607/rustdesk:latest
- 构建状态: ✅ 成功
- 构建耗时: 60s

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
#10 19.05 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 19.05 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 19.05 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 19.06 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 19.06 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 19.06 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 19.06 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 19.06 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 19.06 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 19.06 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 19.06 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 19.06 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 19.06 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 19.59 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 19.66 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 19.70 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 19.70 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 19.70 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 19.70 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 19.70 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 19.70 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 19.71 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 19.71 Setting up python3 (3.10.6-1~22.04.1) ...
#10 19.79 Setting up binutils (2.38-4ubuntu2.10) ...
#10 19.79 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 19.80 Setting up libexpat1-dev:amd64 (2.4.7-1ubuntu0.6) ...
#10 19.80 Setting up libdpkg-perl (1.21.1ubuntu2.6) ...
#10 19.80 Setting up libstdc++-11-dev:amd64 (11.4.0-1ubuntu1~22.04.2) ...
#10 19.81 Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu9.2) ...
#10 19.81 Setting up gcc-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 19.81 Setting up python3-lib2to3 (3.10.8-1~22.04) ...
#10 19.89 Setting up libmysqlclient-dev (8.0.43-0ubuntu0.22.04.2) ...
#10 19.90 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 20.04 Setting up default-libmysqlclient-dev:amd64 (1.0.8) ...
#10 20.04 Setting up python3-distutils (3.10.8-1~22.04) ...
#10 20.14 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 20.14 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 20.42 invoke-rc.d: could not determine current runlevel
#10 20.42 invoke-rc.d: policy-rc.d denied execution of start.
#10 20.52 Setting up python3-setuptools (59.6.0-1.2ubuntu0.22.04.3) ...
#10 20.80 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 20.89 
#10 20.89 Creating config file /etc/ssh/sshd_config with new version
#10 20.91 Creating SSH2 RSA key; this may take some time ...
#10 21.49 3072 SHA256:o79K2xlwWm6hclvWuuv9xgCItNQdNKzAu4HsRDvu6ZY root@buildkitsandbox (RSA)
#10 21.49 Creating SSH2 ECDSA key; this may take some time ...
#10 21.50 256 SHA256:6kNjUwnZRLdcW5k1B8e73WosiB0xkP2gAodGXfaba6I root@buildkitsandbox (ECDSA)
#10 21.50 Creating SSH2 ED25519 key; this may take some time ...
#10 21.51 256 SHA256:DXEqZOPk4bdsqxwmkZhDmqps89VJZJaHBFN+QkTASuQ root@buildkitsandbox (ED25519)
#10 21.56 invoke-rc.d: could not determine current runlevel
#10 21.57 invoke-rc.d: policy-rc.d denied execution of start.
#10 21.74 Setting up g++-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 21.74 Setting up python3-wheel (0.37.1-2ubuntu0.22.04.1) ...
#10 21.85 Setting up gcc (4:11.2.0-1ubuntu1) ...
#10 21.86 Setting up dpkg-dev (1.21.1ubuntu2.6) ...
#10 21.86 Setting up liberror-perl (0.17029-1) ...
#10 21.86 Setting up pkg-config (0.29.2-1ubuntu3) ...
#10 21.88 Setting up libpython3.10-dev:amd64 (3.10.12-1~22.04.11) ...
#10 21.89 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 21.89 Setting up python3-pip (22.0.2+dfsg-1ubuntu0.7) ...
#10 22.77 Setting up python3.10-dev (3.10.12-1~22.04.11) ...
#10 22.77 Setting up g++ (4:11.2.0-1ubuntu1) ...
#10 22.79 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#10 22.79 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#10 22.79 Setting up build-essential (12.9ubuntu3) ...
#10 22.79 Setting up libpython3-dev:amd64 (3.10.6-1~22.04.1) ...
#10 22.79 Setting up python3-dev (3.10.6-1~22.04.1) ...
#10 22.80 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 22.81 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 22.81 Updating certificates in /etc/ssl/certs...
#10 23.23 0 added, 0 removed; done.
#10 23.23 Running hooks in /etc/ca-certificates/update.d...
#10 23.23 done.
#10 DONE 24.2s

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
#17 writing image sha256:3b0a9316d529c4461a3696d8ecacc8ac1e8f88b68a538e3bd23e1187ff0d616f done
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
#11 12.81 Setting up python3.10 (3.10.12-1~22.04.11) ...
#11 13.35 Setting up iptables (1.8.7-1ubuntu5.2) ...
#11 13.36 update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
#11 13.36 update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 13.36 update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
#11 13.36 update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 13.36 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#11 13.37 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#11 13.37 Setting up iproute2 (5.15.0-1ubuntu2) ...
#11 13.44 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#11 13.48 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#11 13.48 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#11 13.48 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#11 13.48 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#11 13.49 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#11 13.49 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#11 13.49 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#11 13.49 Setting up python3 (3.10.6-1~22.04.1) ...
#11 13.57 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#11 13.65 Adding group `docker' (GID 102) ...
#11 13.65 Done.
#11 13.86 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#11 13.86 invoke-rc.d: could not determine current runlevel
#11 13.87 Setting up python3-six (1.16.0-3ubuntu1) ...
#11 13.97 Setting up perl (5.34.0-3ubuntu1.5) ...
#11 13.98 Setting up python3-dateutil (2.8.1-6) ...
#11 14.11 Setting up python3-magic (2:0.4.24-2) ...
#11 14.21 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#11 14.36 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#11 14.37 Setting up supervisor (4.2.1-1ubuntu1) ...
#11 14.66 invoke-rc.d: could not determine current runlevel
#11 14.66 invoke-rc.d: policy-rc.d denied execution of start.
#11 14.76 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#11 14.86 
#11 14.86 Creating config file /etc/ssh/sshd_config with new version
#11 14.88 Creating SSH2 RSA key; this may take some time ...
#11 15.42 3072 SHA256:Lp5PtNp7Prs37K4672zFVmvbtLT57JboQPIjaxypos8 root@buildkitsandbox (RSA)
#11 15.42 Creating SSH2 ECDSA key; this may take some time ...
#11 15.42 256 SHA256:PV1kXl2qIlWwlWWA6jjT46gepg6BlQ011gTz3wf0J3s root@buildkitsandbox (ECDSA)
#11 15.43 Creating SSH2 ED25519 key; this may take some time ...
#11 15.43 256 SHA256:PX+o/xO/KPnJYJb8f6lsfWFBVRuy+0/Xs1H+WUYn4P8 root@buildkitsandbox (ED25519)
#11 15.49 invoke-rc.d: could not determine current runlevel
#11 15.50 invoke-rc.d: policy-rc.d denied execution of start.
#11 15.68 Setting up s3cmd (2.2.0-1) ...
#11 15.81 Setting up liberror-perl (0.17029-1) ...
#11 15.81 Setting up git (1:2.34.1-1ubuntu1.15) ...
#11 15.82 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#11 15.84 Processing triggers for ca-certificates (20240203~22.04.1) ...
#11 15.84 Updating certificates in /etc/ssl/certs...
#11 16.26 0 added, 0 removed; done.
#11 16.26 Running hooks in /etc/ca-certificates/update.d...
#11 16.26 done.
#11 16.34 useradd: warning: the home directory /home/user already exists.
#11 16.34 useradd: Not copying any file from skel directory into it.
#11 DONE 17.2s

#12 [stage-1  6/10] RUN /install.sh
#12 0.873   ┌────────────────────────────────────────────────────────────────┐ 
#12 0.873   │              vocechat-server v0.4.2 installation guide         │ 
#12 0.873   └────────────────────────────────────────────────────────────────┘ 
#12 0.877 
#12 0.877 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#12 0.877 
#12 0.881 Reading package lists...
#12 0.890 Building dependency tree...
#12 0.891 Reading state information...
#12 0.892 E: Unable to locate package libssl-dev
#12 0.892 
#12 0.893 -e Detected platform: [31mx86_64-unknown-linux-musl[0m.
#12 0.893 Downloading URL: https://sh.voce.chat/vocechat-server-v0.4.2-x86_64-unknown-linux-musl.zip
#12 1.002 #=#=#                                                                         ##O#-#                                                                        ##O=#  #                                                                      #=#=-#  #                                                                     -#O#- #   #                                                                                                                                              0.1%                                                                           0.3%                                                                           0.5%                                                                           0.8%                                                                           1.3%#                                                                          2.2%##                                                                         3.6%####                                                                       5.9%######                                                                     9.5%###########                                                               15.7%##################                                                        25.4%#############################                                             40.4%#########################################                                 57.9%########################################################                  78.1%###################################################################       93.6%######################################################################## 100.0%
#12 3.657   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#12 3.657                                  Dload  Upload   Total   Spent    Left  Speed
#12 3.658   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100   634  100   634    0     0    912      0 --:--:-- --:--:-- --:--:--   912
#12 4.356 
#12 4.358 Docker environment detected. Skipping service installation.
#12 DONE 4.4s

#13 [stage-1  7/10] COPY --from=builder /app/xy /usr/local/bin/xy
#13 DONE 0.1s

#14 [stage-1  8/10] COPY --from=builder /app/td /usr/local/bin/td
#14 DONE 0.0s

#15 [stage-1  9/10] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#15 DONE 0.0s

#16 [stage-1 10/10] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#16 DONE 0.1s

#17 exporting to image
#17 exporting layers
#17 exporting layers 2.4s done
#17 writing image sha256:6785c84fb70dbd2fd27211b596eee7ffe6606b5e397818bfc4faa7a80d786b51 done
#17 naming to ghcr.io/xcq0607/voce:latest done
#17 DONE 2.4s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 27)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 27)
```

