# Docker Build Summaries

## 镜像: voce

### 构建信息
- 目录: voce/
- 完整镜像名: ghcr.io/xcq0607/voce:latest
- 构建状态: ✅ 成功
- 构建耗时: 51s

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
#11 13.25 Setting up python3.10 (3.10.12-1~22.04.11) ...
#11 13.79 Setting up iptables (1.8.7-1ubuntu5.2) ...
#11 13.79 update-alternatives: using /usr/sbin/iptables-legacy to provide /usr/sbin/iptables (iptables) in auto mode
#11 13.79 update-alternatives: using /usr/sbin/ip6tables-legacy to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 13.79 update-alternatives: using /usr/sbin/iptables-nft to provide /usr/sbin/iptables (iptables) in auto mode
#11 13.80 update-alternatives: using /usr/sbin/ip6tables-nft to provide /usr/sbin/ip6tables (ip6tables) in auto mode
#11 13.80 update-alternatives: using /usr/sbin/arptables-nft to provide /usr/sbin/arptables (arptables) in auto mode
#11 13.80 update-alternatives: using /usr/sbin/ebtables-nft to provide /usr/sbin/ebtables (ebtables) in auto mode
#11 13.80 Setting up iproute2 (5.15.0-1ubuntu2) ...
#11 13.87 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#11 13.91 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#11 13.91 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#11 13.91 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#11 13.91 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#11 13.92 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#11 13.92 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#11 13.92 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#11 13.92 Setting up python3 (3.10.6-1~22.04.1) ...
#11 14.00 Setting up docker.io (28.2.2-0ubuntu1~22.04.1) ...
#11 14.08 Adding group `docker' (GID 102) ...
#11 14.08 Done.
#11 14.30 invoke-rc.d: unknown initscript, /etc/init.d/docker not found.
#11 14.30 invoke-rc.d: could not determine current runlevel
#11 14.31 Setting up python3-six (1.16.0-3ubuntu1) ...
#11 14.41 Setting up perl (5.34.0-3ubuntu1.5) ...
#11 14.42 Setting up python3-dateutil (2.8.1-6) ...
#11 14.55 Setting up python3-magic (2:0.4.24-2) ...
#11 14.66 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#11 14.81 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#11 14.81 Setting up supervisor (4.2.1-1ubuntu1) ...
#11 15.10 invoke-rc.d: could not determine current runlevel
#11 15.10 invoke-rc.d: policy-rc.d denied execution of start.
#11 15.20 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#11 15.30 
#11 15.30 Creating config file /etc/ssh/sshd_config with new version
#11 15.33 Creating SSH2 RSA key; this may take some time ...
#11 16.07 3072 SHA256:w7nv3+wrJ0f13Ek8SeyNZBhXK1V+w3s+V4UB33nuPhc root@buildkitsandbox (RSA)
#11 16.07 Creating SSH2 ECDSA key; this may take some time ...
#11 16.08 256 SHA256:cagqC6nM5dtBYTVjc0IgBDi1XZETNpXZ8tEToZgXfhQ root@buildkitsandbox (ECDSA)
#11 16.08 Creating SSH2 ED25519 key; this may take some time ...
#11 16.09 256 SHA256:kS5awT7keIHlOnWCbLLmvk5EbU8SAxLaevzg4JQszCQ root@buildkitsandbox (ED25519)
#11 16.15 invoke-rc.d: could not determine current runlevel
#11 16.15 invoke-rc.d: policy-rc.d denied execution of start.
#11 16.35 Setting up s3cmd (2.2.0-1) ...
#11 16.49 Setting up liberror-perl (0.17029-1) ...
#11 16.49 Setting up git (1:2.34.1-1ubuntu1.15) ...
#11 16.50 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#11 16.51 Processing triggers for ca-certificates (20240203~22.04.1) ...
#11 16.51 Updating certificates in /etc/ssl/certs...
#11 16.94 0 added, 0 removed; done.
#11 16.94 Running hooks in /etc/ca-certificates/update.d...
#11 16.94 done.
#11 17.01 useradd: warning: the home directory /home/user already exists.
#11 17.01 useradd: Not copying any file from skel directory into it.
#11 DONE 17.3s

#13 [stage-1  6/10] RUN /install.sh
#13 0.745   ┌────────────────────────────────────────────────────────────────┐ 
#13 0.745   │              vocechat-server v0.4.2 installation guide         │ 
#13 0.745   └────────────────────────────────────────────────────────────────┘ 
#13 0.749 
#13 0.749 WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
#13 0.749 
#13 0.754 Reading package lists...
#13 0.763 Building dependency tree...
#13 0.764 Reading state information...
#13 0.764 E: Unable to locate package libssl-dev
#13 0.765 
#13 0.766 -e Detected platform: [31mx86_64-unknown-linux-musl[0m.
#13 0.766 Downloading URL: https://sh.voce.chat/vocechat-server-v0.4.2-x86_64-unknown-linux-musl.zip
#13 0.891 #=#=#                                                                         ##O#-#                                                                        ##O=#  #                                                                      #=#=-#  #                                                                                                                                                0.1%                                                                           0.2%                                                                           0.3%                                                                           0.5%                                                                           0.7%                                                                           1.1%#                                                                          1.6%#                                                                          2.4%##                                                                         3.5%###                                                                        5.1%#####                                                                      7.5%#######                                                                   10.9%###########                                                               15.7%################                                                          23.2%#######################                                                   33.1%###################################                                       48.6%###########################################                               60.3%#######################################################                   77.4%#################################################################         90.7%######################################################################## 100.0%
#13 3.877   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#13 3.877                                  Dload  Upload   Total   Spent    Left  Speed
#13 3.877   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100   634  100   634    0     0    927      0 --:--:-- --:--:-- --:--:--   926
#13 4.565 
#13 4.567 Docker environment detected. Skipping service installation.
#13 DONE 4.6s

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
#18 exporting layers 2.4s done
#18 writing image sha256:f965202814a92afa213ef02b641eaeb41cbd7d650929d4cfc1946e52f1a5c635 done
#18 naming to ghcr.io/xcq0607/voce:latest done
#18 DONE 2.4s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 27)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 27)
```

