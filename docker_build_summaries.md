# Docker Build Summaries

## 镜像: xrayfiora

### 构建信息
- 目录: xrayfiora/
- 完整镜像名: ghcr.io/xcq0607/xrayfiora:latest
- 构建状态: ✅ 成功
- 构建耗时: 194s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/xrayfiora:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-xrayfiora ghcr.io/xcq0607/xrayfiora:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/xrayfiora:latest
```

### 构建日志

```
#8 131.9 The following NEW packages will be installed:
#8 131.9   libatomic1 libjemalloc2 liblua5.1-0 liblzf1 lua-bitop lua-cjson redis-server
#8 131.9   redis-tools
#8 132.2 0 upgraded, 8 newly installed, 0 to remove and 1 not upgraded.
#8 132.2 Need to get 1283 kB of archives.
#8 132.2 After this operation, 5771 kB of additional disk space will be used.
#8 132.2 Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libatomic1 amd64 12.3.0-1ubuntu1~22.04.2 [10.4 kB]
#8 132.3 Get:2 http://archive.ubuntu.com/ubuntu jammy/universe amd64 libjemalloc2 amd64 5.2.1-4ubuntu1 [240 kB]
#8 132.6 Get:3 http://archive.ubuntu.com/ubuntu jammy/universe amd64 liblua5.1-0 amd64 5.1.5-8.1build4 [99.9 kB]
#8 132.6 Get:4 http://archive.ubuntu.com/ubuntu jammy/universe amd64 liblzf1 amd64 3.6-3 [7444 B]
#8 132.6 Get:5 http://archive.ubuntu.com/ubuntu jammy/universe amd64 lua-bitop amd64 1.0.2-5 [6680 B]
#8 132.6 Get:6 http://archive.ubuntu.com/ubuntu jammy/universe amd64 lua-cjson amd64 2.1.0+dfsg-2.1 [17.4 kB]
#8 132.6 Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 redis-tools amd64 5:6.0.16-1ubuntu1.1 [856 kB]
#8 132.7 Get:8 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 redis-server amd64 5:6.0.16-1ubuntu1.1 [45.9 kB]
#8 132.8 debconf: delaying package configuration, since apt-utils is not installed
#8 132.9 Fetched 1283 kB in 1s (1612 kB/s)
#8 132.9 Selecting previously unselected package libatomic1:amd64.
#8 132.9 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 23095 files and directories currently installed.)
#8 132.9 Preparing to unpack .../0-libatomic1_12.3.0-1ubuntu1~22.04.2_amd64.deb ...
#8 132.9 Unpacking libatomic1:amd64 (12.3.0-1ubuntu1~22.04.2) ...
#8 132.9 Selecting previously unselected package libjemalloc2:amd64.
#8 132.9 Preparing to unpack .../1-libjemalloc2_5.2.1-4ubuntu1_amd64.deb ...
#8 132.9 Unpacking libjemalloc2:amd64 (5.2.1-4ubuntu1) ...
#8 132.9 Selecting previously unselected package liblua5.1-0:amd64.
#8 132.9 Preparing to unpack .../2-liblua5.1-0_5.1.5-8.1build4_amd64.deb ...
#8 132.9 Unpacking liblua5.1-0:amd64 (5.1.5-8.1build4) ...
#8 133.0 Selecting previously unselected package liblzf1:amd64.
#8 133.0 Preparing to unpack .../3-liblzf1_3.6-3_amd64.deb ...
#8 133.0 Unpacking liblzf1:amd64 (3.6-3) ...
#8 133.0 Selecting previously unselected package lua-bitop:amd64.
#8 133.0 Preparing to unpack .../4-lua-bitop_1.0.2-5_amd64.deb ...
#8 133.0 Unpacking lua-bitop:amd64 (1.0.2-5) ...
#8 133.0 Selecting previously unselected package lua-cjson:amd64.
#8 133.0 Preparing to unpack .../5-lua-cjson_2.1.0+dfsg-2.1_amd64.deb ...
#8 133.0 Unpacking lua-cjson:amd64 (2.1.0+dfsg-2.1) ...
#8 133.0 Selecting previously unselected package redis-tools.
#8 133.0 Preparing to unpack .../6-redis-tools_5%3a6.0.16-1ubuntu1.1_amd64.deb ...
#8 133.0 Unpacking redis-tools (5:6.0.16-1ubuntu1.1) ...
#8 133.0 Selecting previously unselected package redis-server.
#8 133.1 Preparing to unpack .../7-redis-server_5%3a6.0.16-1ubuntu1.1_amd64.deb ...
#8 133.1 Unpacking redis-server (5:6.0.16-1ubuntu1.1) ...
#8 133.1 Setting up libjemalloc2:amd64 (5.2.1-4ubuntu1) ...
#8 133.1 Setting up lua-cjson:amd64 (2.1.0+dfsg-2.1) ...
#8 133.1 Setting up liblzf1:amd64 (3.6-3) ...
#8 133.1 Setting up libatomic1:amd64 (12.3.0-1ubuntu1~22.04.2) ...
#8 133.1 Setting up lua-bitop:amd64 (1.0.2-5) ...
#8 133.1 Setting up liblua5.1-0:amd64 (5.1.5-8.1build4) ...
#8 133.1 Setting up redis-tools (5:6.0.16-1ubuntu1.1) ...
#8 133.2 Setting up redis-server (5:6.0.16-1ubuntu1.1) ...
#8 133.2 invoke-rc.d: could not determine current runlevel
#8 133.2 invoke-rc.d: policy-rc.d denied execution of start.
#8 133.3 Created symlink /etc/systemd/system/redis.service → /lib/systemd/system/redis-server.service.
#8 133.3 Created symlink /etc/systemd/system/multi-user.target.wants/redis-server.service → /lib/systemd/system/redis-server.service.
#8 133.3 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#8 134.0 
#8 134.0 > yarn@1.22.22 preinstall /usr/lib/node_modules/yarn
#8 134.0 > :; (node ./preinstall.js > /dev/null 2>&1 || true)
#8 134.0 
#8 134.3 /usr/bin/yarn -> /usr/lib/node_modules/yarn/bin/yarn.js
#8 134.3 /usr/bin/yarnpkg -> /usr/lib/node_modules/yarn/bin/yarn.js
#8 134.3 + yarn@1.22.22
#8 134.3 added 1 package in 0.582s
#8 DONE 136.0s

#10 [stage-1  3/12] COPY entrypoint.sh /entrypoint.sh
#10 DONE 0.0s

#11 [stage-1  4/12] COPY app /app
#11 DONE 0.0s

#12 [stage-1  5/12] RUN chmod +x /entrypoint.sh;     chmod -R 777 /app;     useradd -u 1000 -g 0 -m -s /bin/bash user;     ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;     echo Asia/Shanghai > /etc/timezone;     git config --global user.email "fiora@example.com";     git config --global user.name "Fiora Installer"
#12 DONE 0.1s

#13 [stage-1  6/12] RUN mkdir -p /data/db /data/redis;     chown -R 1000:0 /data/db /data/redis;     chmod -R 777 /data/db /data/redis
#13 DONE 0.1s

#14 [stage-1  7/12] RUN mkdir -p /app/fiora;     chown -R 1000:0 /app/fiora;     chmod -R 777 /app/fiora
#14 DONE 0.1s

#15 [stage-1  8/12] RUN chmod +x /app/start-fiora.sh;     chmod +x /app/test-services.sh
#15 DONE 0.1s

#16 [stage-1  9/12] COPY --from=builder /app/xy /usr/local/bin/xy
#16 DONE 0.1s

#17 [stage-1 10/12] COPY --from=builder /app/td /usr/local/bin/td
#17 DONE 0.0s

#18 [stage-1 11/12] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#18 DONE 0.0s

#19 [stage-1 12/12] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#19 DONE 0.0s

#20 exporting to image
#20 exporting layers
#20 exporting layers 5.8s done
#20 writing image sha256:274c5c793221e7855a27814650a8c08eab8f6f67cd17e12a4ccdd7de54ee2fb2 done
#20 naming to ghcr.io/xcq0607/xrayfiora:latest done
#20 DONE 5.8s
```

