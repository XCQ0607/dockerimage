# Docker Build Summaries

## 镜像: voce

### 构建信息
- 目录: voce/
- 完整镜像名: ghcr.io/xcq0607/voce:latest
- 构建状态: ✅ 成功
- 构建耗时: 52s

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
#11 14.06 Setting up python3.10 (3.10.12-1~22.04.11) ...
#11 14.58 Setting up iptables (1.8.7-1ubuntu5.2) ...
#11 14.59 update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
#11 14.59 update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 14.59 update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
#11 14.59 update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 14.60 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#11 14.60 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#11 14.60 Setting up iproute2 (5.15.0-1ubuntu2) ...
#11 14.67 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#11 14.71 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#11 14.71 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#11 14.71 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#11 14.71 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#11 14.71 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#11 14.71 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#11 14.72 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#11 14.72 Setting up python3 (3.10.6-1~22.04.1) ...
#11 14.80 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#11 14.87 Adding group `docker' (GID 102) ...
#11 14.87 Done.
#11 15.07 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#11 15.07 invoke-rc.d: could not determine current runlevel
#11 15.08 Setting up python3-six (1.16.0-3ubuntu1) ...
#11 15.18 Setting up perl (5.34.0-3ubuntu1.5) ...
#11 15.19 Setting up python3-dateutil (2.8.1-6) ...
#11 15.31 Setting up python3-magic (2:0.4.24-2) ...
#11 15.40 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#11 15.55 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#11 15.55 Setting up supervisor (4.2.1-1ubuntu1) ...
#11 15.83 invoke-rc.d: could not determine current runlevel
#11 15.83 invoke-rc.d: policy-rc.d denied execution of start.
#11 15.93 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#11 16.03 
#11 16.03 Creating config file /etc/ssh/sshd_config with new version
#11 16.05 Creating SSH2 RSA key; this may take some time ...
#11 16.51 3072 SHA256:TwHQeCNl98XzTsUhTujUHWvXrbTilAH0FmXLpHbkUa4 root@buildkitsandbox (RSA)
#11 16.52 Creating SSH2 ECDSA key; this may take some time ...
#11 16.52 256 SHA256:Xah7GY8xhc3u9UcIgrqxnmWSv9dOxOnrpe19EfU7y0k root@buildkitsandbox (ECDSA)
#11 16.53 Creating SSH2 ED25519 key; this may take some time ...
#11 16.53 256 SHA256:zo7lqk9qOh2basCRaqlPpDxhMoFg+rAmySUxtZeOUE4 root@buildkitsandbox (ED25519)
#11 16.59 invoke-rc.d: could not determine current runlevel
#11 16.59 invoke-rc.d: policy-rc.d denied execution of start.
#11 16.76 Setting up s3cmd (2.2.0-1) ...
#11 16.89 Setting up liberror-perl (0.17029-1) ...
#11 16.89 Setting up git (1:2.34.1-1ubuntu1.15) ...
#11 16.90 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#11 16.91 Processing triggers for ca-certificates (20240203~22.04.1) ...
#11 16.92 Updating certificates in /etc/ssl/certs...
#11 17.33 0 added, 0 removed; done.
#11 17.33 Running hooks in /etc/ca-certificates/update.d...
#11 17.33 done.
#11 17.40 useradd: warning: the home directory /home/user already exists.
#11 17.40 useradd: Not copying any file from skel directory into it.
#11 DONE 17.5s

#13 [stage-1  6/10] RUN /install.sh
#13 0.769   ┌────────────────────────────────────────────────────────────────┐ 
#13 0.769   │              vocechat-server v0.4.2 installation guide         │ 
#13 0.769   └────────────────────────────────────────────────────────────────┘ 
#13 0.773 
#13 0.773 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#13 0.773 
#13 0.777 Reading package lists...
#13 0.786 Building dependency tree...
#13 0.786 Reading state information...
#13 0.787 E: Unable to locate package libssl-dev
#13 0.788 
#13 0.789 -e Detected platform: [31mx86_64-unknown-linux-musl[0m.
#13 0.789 Downloading URL: https://sh.voce.chat/vocechat-server-v0.4.2-x86_64-unknown-linux-musl.zip
#13 0.920 #=#=#                                                                         ##O#-#                                                                        ##O=#  #                                                                      #=#=-#  #                                                                     -#O#- #   #                                                                                                                                              0.1%                                                                           0.2%                                                                           0.4%                                                                           0.6%                                                                           0.9%#                                                                          1.4%#                                                                          2.2%##                                                                         3.4%###                                                                        5.2%#####                                                                      7.9%########                                                                  11.9%#############                                                             18.3%####################                                                      28.1%#############################                                             41.6%#########################################                                 58.1%#####################################################                     74.1%###############################################################           87.7%######################################################################## 100.0%
#13 3.686   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#13 3.686                                  Dload  Upload   Total   Spent    Left  Speed
#13 3.686   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100   634  100   634    0     0    944      0 --:--:-- --:--:-- --:--:--   943
#13 4.361 
#13 4.363 Docker environment detected. Skipping service installation.
#13 DONE 4.4s

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
#18 exporting layers 2.3s done
#18 writing image sha256:90b8e842dd7c37d18ceb90997cf6bd0e904bff015acdc4a9fdc11220c5e92012 done
#18 naming to ghcr.io/xcq0607/voce:latest done
#18 DONE 2.3s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 27)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 27)
```

