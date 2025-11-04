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
│   │   ├── hysteria
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

47 directories, 65 files
```

## 镜像: nezha

### 构建信息
- 目录: nezha/
- 完整镜像名: ghcr.io/xcq0607/nezha:latest
- 构建状态: ❌ 失败
- 构建耗时: 13s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/nezha:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-nezha ghcr.io/xcq0607/nezha:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/nezha:latest
```

### 构建日志

```
#10 7.792 Selecting previously unselected package libedit2:amd64.
#10 7.793 Preparing to unpack .../11-libedit2_3.1-20210910-1build1_amd64.deb ...
#10 7.794 Unpacking libedit2:amd64 (3.1-20210910-1build1) ...
#10 7.808 Selecting previously unselected package libcbor0.8:amd64.
#10 7.809 Preparing to unpack .../12-libcbor0.8_0.8.0-2ubuntu1_amd64.deb ...
#10 7.810 Unpacking libcbor0.8:amd64 (0.8.0-2ubuntu1) ...
#10 7.823 Selecting previously unselected package libfido2-1:amd64.
#10 7.824 Preparing to unpack .../13-libfido2-1_1.10.0-1_amd64.deb ...
#10 7.825 Unpacking libfido2-1:amd64 (1.10.0-1) ...
#10 7.840 Selecting previously unselected package openssh-client.
#10 7.841 Preparing to unpack .../14-openssh-client_1%3a8.9p1-3ubuntu0.13_amd64.deb ...
#10 7.846 Unpacking openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 7.872 Selecting previously unselected package openssh-sftp-server.
#10 7.873 Preparing to unpack .../15-openssh-sftp-server_1%3a8.9p1-3ubuntu0.13_amd64.deb ...
#10 7.874 Unpacking openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 7.888 Selecting previously unselected package ucf.
#10 7.889 Preparing to unpack .../16-ucf_3.0043_all.deb ...
#10 7.891 Moving old data out of the way
#10 7.892 Unpacking ucf (3.0043) ...
#10 7.909 Selecting previously unselected package libwrap0:amd64.
#10 7.910 Preparing to unpack .../17-libwrap0_7.6.q-31build2_amd64.deb ...
#10 7.911 Unpacking libwrap0:amd64 (7.6.q-31build2) ...
#10 7.926 Selecting previously unselected package openssh-server.
#10 7.927 Preparing to unpack .../18-openssh-server_1%3a8.9p1-3ubuntu0.13_amd64.deb ...
#10 7.935 Unpacking openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 7.957 Selecting previously unselected package perl-modules-5.34.
#10 7.958 Preparing to unpack .../19-perl-modules-5.34_5.34.0-3ubuntu1.5_all.deb ...
#10 7.959 Unpacking perl-modules-5.34 (5.34.0-3ubuntu1.5) ...
#10 8.231 Selecting previously unselected package libgdbm6:amd64.
#10 8.233 Preparing to unpack .../20-libgdbm6_1.23-1_amd64.deb ...
#10 8.234 Unpacking libgdbm6:amd64 (1.23-1) ...
#10 8.248 Selecting previously unselected package libgdbm-compat4:amd64.
#10 8.249 Preparing to unpack .../21-libgdbm-compat4_1.23-1_amd64.deb ...
#10 8.250 Unpacking libgdbm-compat4:amd64 (1.23-1) ...
#10 8.263 Selecting previously unselected package libperl5.34:amd64.
#10 8.264 Preparing to unpack .../22-libperl5.34_5.34.0-3ubuntu1.5_amd64.deb ...
#10 8.265 Unpacking libperl5.34:amd64 (5.34.0-3ubuntu1.5) ...
#10 8.473 Selecting previously unselected package perl.
#10 8.475 Preparing to unpack .../23-perl_5.34.0-3ubuntu1.5_amd64.deb ...
#10 8.481 Unpacking perl (5.34.0-3ubuntu1.5) ...
#10 8.505 Selecting previously unselected package python3-pkg-resources.
#10 8.507 Preparing to unpack .../24-python3-pkg-resources_59.6.0-1.2ubuntu0.22.04.3_all.deb ...
#10 8.507 Unpacking python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 8.525 Selecting previously unselected package supervisor.
#10 8.527 Preparing to unpack .../25-supervisor_4.2.1-1ubuntu1_all.deb ...
#10 8.528 Unpacking supervisor (4.2.1-1ubuntu1) ...
#10 8.570 Selecting previously unselected package openssl.
#10 8.571 Preparing to unpack .../26-openssl_3.0.2-0ubuntu1.20_amd64.deb ...
#10 8.572 Unpacking openssl (3.0.2-0ubuntu1.20) ...
#10 8.607 Selecting previously unselected package ca-certificates.
#10 8.609 Preparing to unpack .../27-ca-certificates_20240203~22.04.1_all.deb ...
#10 8.610 Unpacking ca-certificates (20240203~22.04.1) ...
#10 8.669 Selecting previously unselected package libelf1:amd64.
#10 8.672 Preparing to unpack .../28-libelf1_0.186-1ubuntu0.1_amd64.deb ...
#10 8.673 Unpacking libelf1:amd64 (0.186-1ubuntu0.1) ...
#10 8.694 Selecting previously unselected package libbpf0:amd64.
#10 8.696 Preparing to unpack .../29-libbpf0_1%3a0.5.0-1ubuntu22.04.1_amd64.deb ...
#10 8.697 Unpacking libbpf0:amd64 (1:0.5.0-1ubuntu22.04.1) ...
#10 8.717 Selecting previously unselected package libmnl0:amd64.
#10 8.718 Preparing to unpack .../30-libmnl0_1.0.4-3build2_amd64.deb ...
#10 8.720 Unpacking libmnl0:amd64 (1.0.4-3build2) ...
#10 8.737 Selecting previously unselected package libxtables12:amd64.
#10 8.739 Preparing to unpack .../31-libxtables12_1.8.7-1ubuntu5.2_amd64.deb ...
#10 8.740 Unpacking libxtables12:amd64 (1.8.7-1ubuntu5.2) ...
#10 8.758 Selecting previously unselected package libcap2-bin.
#10 8.760 Preparing to unpack .../32-libcap2-bin_1%3a2.44-1ubuntu0.22.04.2_amd64.deb ...
#10 8.761 Unpacking libcap2-bin (1:2.44-1ubuntu0.22.04.2) ...
#10 8.781 Selecting previously unselected package iproute2.
#10 8.783 Preparing to unpack .../33-iproute2_5.15.0-1ubuntu2_amd64.deb ...
#10 8.784 Unpacking iproute2 (5.15.0-1ubuntu2) ...
#10 8.838 Selecting previously unselected package iputils-ping.
#10 8.841 Preparing to unpack .../34-iputils-ping_3%3a20211215-1ubuntu0.1_amd64.deb ...
#10 8.842 Unpacking iputils-ping (3:20211215-1ubuntu0.1) ...
#10 8.861 Selecting previously unselected package netbase.
#10 8.864 Preparing to unpack .../35-netbase_6.3_all.deb ...
#10 8.864 Unpacking netbase (6.3) ...
#10 8.892 Selecting previously unselected package sudo.
#10 8.892 Preparing to unpack .../36-sudo_1.9.9-1ubuntu2.5_amd64.deb ...
#10 8.894 Unpacking sudo (1.9.9-1ubuntu2.5) ...
#10 9.432 Selecting previously unselected package tzdata.
#10 9.434 Preparing to unpack .../37-tzdata_2025b-0ubuntu0.22.04.1_all.deb ...
#10 9.435 Unpacking tzdata (2025b-0ubuntu0.22.04.1) ...
#10 CANCELED
------
 > [stage-1 10/10] COPY --from=builder /app/hysteria /usr/local/bin/hysteria:
------

 [33m3 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 57)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 57)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "NEZHA_PASSWORD") (line 96)
Dockerfile:135
--------------------
 133 |     # Copy cloudflared binary
 134 |     COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
 135 | >>> COPY --from=builder /app/hysteria /usr/local/bin/hysteria
 136 |     
 137 |     EXPOSE 7860
--------------------
ERROR: failed to build: failed to solve: failed to compute cache key: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::pdmzixpyfu4awtwcnkevkd5qm: "/app/hysteria": not found
```

