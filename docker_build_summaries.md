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
- 构建耗时: 11s

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

#12 [stage-1  8/10] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#12 CACHED

#13 [stage-1  5/10] RUN chmod +x /app/install-nezha.sh /app/nezha-start.sh /app/nezha-stop.sh /app/nezha.sh
#13 CACHED

#14 [stage-1  6/10] COPY --from=builder /app/xy /usr/local/bin/xy
#14 CACHED

#15 [stage-1  7/10] COPY --from=builder /app/td /usr/local/bin/td
#15 CACHED

#16 [stage-1  9/10] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#16 CACHED

#17 [stage-1 10/10] COPY --from=builder /app/hysteria /usr/local/bin/hysteria
#17 ERROR: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::264q5pzsc40n90ebcb7obc1rf: "/app/hysteria": not found

#10 [stage-1  4/10] RUN export DEBIAN_FRONTEND=noninteractive;     apt-get update;     apt-get install -y tzdata openssh-server curl ca-certificates wget vim net-tools supervisor unzip iputils-ping telnet git iproute2 docker.io s3cmd zip sudo systemd --no-install-recommends;     apt-get clean;     rm -rf /var/lib/apt/lists/*;     mkdir -p /app/data /app/backup /app/cron /app/supervisor /app/xy /home/user /tmp /opt/nezha/dashboard /opt/nezha/dashboard/data;     chown -R 1000:0 /app/data /app/backup /app/cron /app/supervisor /app/xy /home/user /tmp /opt/nezha/dashboard /opt/nezha/dashboard/data;     chmod -R 777 /app/data /app/backup /app/cron /app/supervisor /app/xy /home/user /tmp /opt/nezha/dashboard /opt/nezha/dashboard/data;     chmod +x /entrypoint.sh;     chmod -R 777 /app;     chmod +x /app/backup/*.sh /app/setup-cron.sh;     useradd -u 1000 -g 0 -m -s /bin/bash user;     echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers;     ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;     echo Asia/Shanghai > /etc/timezone
#10 6.216 Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 python3 amd64 3.10.6-1~22.04.1 [22.8 kB]
#10 6.218 Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libapparmor1 amd64 3.0.4-2ubuntu2.4 [39.7 kB]
#10 6.218 Get:16 http://archive.ubuntu.com/ubuntu jammy/main amd64 libargon2-1 amd64 0~20171227-0.3 [19.5 kB]
#10 6.220 Get:17 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libdevmapper1.02.1 amd64 2:1.02.175-2.1ubuntu5 [139 kB]
#10 6.223 Get:18 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libjson-c5 amd64 0.15-3~ubuntu1.22.04.2 [33.5 kB]
#10 6.224 Get:19 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcryptsetup12 amd64 2:2.4.3-1ubuntu1.3 [211 kB]
#10 6.301 Get:20 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libip4tc2 amd64 1.8.7-1ubuntu5.2 [19.9 kB]
#10 6.301 Get:21 http://archive.ubuntu.com/ubuntu jammy/main amd64 libkmod2 amd64 29-1ubuntu1 [48.0 kB]
#10 6.303 Get:22 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 systemd amd64 249.11-0ubuntu3.17 [4583 kB]
#10 6.389 Get:23 http://archive.ubuntu.com/ubuntu jammy/main amd64 libmd0 amd64 1.0.4-1build1 [23.0 kB]
#10 6.390 Get:24 http://archive.ubuntu.com/ubuntu jammy/main amd64 libbsd0 amd64 0.11.5-1 [44.8 kB]
#10 6.390 Get:25 http://archive.ubuntu.com/ubuntu jammy/main amd64 libedit2 amd64 3.1-20210910-1build1 [96.8 kB]
#10 6.391 Get:26 http://archive.ubuntu.com/ubuntu jammy/main amd64 libcbor0.8 amd64 0.8.0-2ubuntu1 [24.6 kB]
#10 6.391 Get:27 http://archive.ubuntu.com/ubuntu jammy/main amd64 libfido2-1 amd64 1.10.0-1 [82.8 kB]
#10 6.392 Get:28 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-client amd64 1:8.9p1-3ubuntu0.13 [903 kB]
#10 6.399 Get:29 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.13 [38.7 kB]
#10 6.468 Get:30 http://archive.ubuntu.com/ubuntu jammy/main amd64 ucf all 3.0043 [56.1 kB]
#10 6.469 Get:31 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
#10 6.553 Get:32 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.13 [435 kB]
#10 6.557 Get:33 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 perl-modules-5.34 all 5.34.0-3ubuntu1.5 [2977 kB]
#10 6.584 Get:34 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgdbm6 amd64 1.23-1 [33.9 kB]
#10 6.585 Get:35 http://archive.ubuntu.com/ubuntu jammy/main amd64 libgdbm-compat4 amd64 1.23-1 [6606 B]
#10 6.585 Get:36 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libperl5.34 amd64 5.34.0-3ubuntu1.5 [4797 kB]
#10 6.725 Get:37 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 perl amd64 5.34.0-3ubuntu1.5 [232 kB]
#10 6.727 Get:38 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 python3-pkg-resources all 59.6.0-1.2ubuntu0.22.04.3 [133 kB]
#10 6.728 Get:39 http://archive.ubuntu.com/ubuntu jammy/universe amd64 supervisor all 4.2.1-1ubuntu1 [278 kB]
#10 6.730 Get:40 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssl amd64 3.0.2-0ubuntu1.20 [1185 kB]
#10 6.737 Get:41 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ca-certificates all 20240203~22.04.1 [162 kB]
#10 6.739 Get:42 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libelf1 amd64 0.186-1ubuntu0.1 [51.1 kB]
#10 6.740 Get:43 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libbpf0 amd64 1:0.5.0-1ubuntu22.04.1 [140 kB]
#10 6.741 Get:44 http://archive.ubuntu.com/ubuntu jammy/main amd64 libmnl0 amd64 1.0.4-3build2 [13.2 kB]
#10 6.742 Get:45 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libxtables12 amd64 1.8.7-1ubuntu5.2 [31.3 kB]
#10 6.810 Get:46 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcap2-bin amd64 1:2.44-1ubuntu0.22.04.2 [26.0 kB]
#10 6.894 Get:47 http://archive.ubuntu.com/ubuntu jammy/main amd64 iproute2 amd64 5.15.0-1ubuntu2 [1070 kB]
#10 6.902 Get:48 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 iputils-ping amd64 3:20211215-1ubuntu0.1 [43.0 kB]
#10 6.902 Get:49 http://archive.ubuntu.com/ubuntu jammy/main amd64 netbase all 6.3 [12.9 kB]
#10 6.903 Get:50 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 sudo amd64 1.9.9-1ubuntu2.5 [820 kB]
#10 6.908 Get:51 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 tzdata all 2025b-0ubuntu0.22.04.1 [347 kB]
#10 6.911 Get:52 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 xxd amd64 2:8.2.3995-1ubuntu2.24 [51.4 kB]
#10 6.911 Get:53 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 vim-common all 2:8.2.3995-1ubuntu2.24 [81.5 kB]
#10 6.912 Get:54 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libip6tc2 amd64 1.8.7-1ubuntu5.2 [20.3 kB]
#10 6.913 Get:55 http://archive.ubuntu.com/ubuntu jammy/main amd64 libnfnetlink0 amd64 1.0.1-3build3 [14.6 kB]
#10 6.979 Get:56 http://archive.ubuntu.com/ubuntu jammy/main amd64 libnetfilter-conntrack3 amd64 1.0.9-1 [45.3 kB]
#10 7.063 Get:57 http://archive.ubuntu.com/ubuntu jammy/main amd64 libnftnl11 amd64 1.2.1-1build1 [65.5 kB]
#10 7.064 Get:58 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 iptables amd64 1.8.7-1ubuntu5.2 [455 kB]
#10 7.067 Get:59 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libmagic-mgc amd64 1:5.41-3ubuntu0.1 [257 kB]
#10 7.070 Get:60 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libmagic1 amd64 1:5.41-3ubuntu0.1 [87.2 kB]
#10 7.071 Get:61 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnghttp2-14 amd64 1.43.0-1ubuntu0.2 [76.9 kB]
#10 7.072 Get:62 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpsl5 amd64 0.21.0-1.2build2 [58.4 kB]
#10 7.072 Get:63 http://archive.ubuntu.com/ubuntu jammy/main amd64 telnet amd64 0.17-44build1 [66.9 kB]
#10 7.073 Get:64 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 wget amd64 1.21.2-2ubuntu1.1 [339 kB]
#10 7.076 Get:65 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 runc amd64 1.3.0-0ubuntu2~22.04.1 [8786 kB]
#10 7.247 Get:66 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 containerd amd64 1.7.28-0ubuntu1~22.04.1 [38.5 MB]
#10 8.340 Get:67 http://archive.ubuntu.com/ubuntu jammy/main amd64 libbrotli1 amd64 1.0.9-2build6 [315 kB]
#10 8.343 Get:68 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-modules-db amd64 2.1.27+dfsg2-3ubuntu1.2 [20.5 kB]
#10 8.344 Get:69 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libsasl2-2 amd64 2.1.27+dfsg2-3ubuntu1.2 [53.8 kB]
#10 8.345 Get:70 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libldap-2.5-0 amd64 2.5.19+dfsg-0ubuntu0.22.04.1 [184 kB]
#10 8.347 Get:71 http://archive.ubuntu.com/ubuntu jammy/main amd64 librtmp1 amd64 2.4+20151223.gitfa8646d.1-2build4 [58.2 kB]
#10 8.348 Get:72 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libssh-4 amd64 0.9.6-2ubuntu0.22.04.5 [187 kB]
#10 8.353 Get:73 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libcurl4 amd64 7.81.0-1ubuntu1.21 [290 kB]
#10 8.355 Get:74 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 curl amd64 7.81.0-1ubuntu1.21 [194 kB]
#10 8.358 Get:75 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 docker.io amd64 28.2.2-0ubuntu1~22.04.1 [28.4 MB]
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
ERROR: failed to build: failed to solve: failed to compute cache key: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::264q5pzsc40n90ebcb7obc1rf: "/app/hysteria": not found
```

