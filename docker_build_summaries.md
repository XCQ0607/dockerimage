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
│   │   ├── nginx
│   │   ├── setup-cron.sh
│   │   ├── setup-nginx.sh
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

48 directories, 66 files
```

## 镜像: nezha

### 构建信息
- 目录: nezha/
- 完整镜像名: ghcr.io/xcq0607/nezha:latest
- 构建状态: ❌ 失败
- 构建耗时: 39s

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
#11 32.59 checking for int size ... 4 bytes
#11 32.63 checking for long size ... 8 bytes
#11 32.66 checking for long long size ... 8 bytes
#11 32.70 checking for void * size ... 8 bytes
#11 32.74 checking for uint32_t ... found
#11 32.78 checking for uint64_t ... found
#11 32.82 checking for sig_atomic_t ... found
#11 32.85 checking for sig_atomic_t size ... 4 bytes
#11 32.89 checking for socklen_t ... found
#11 32.93 checking for in_addr_t ... found
#11 32.97 checking for in_port_t ... found
#11 33.01 checking for rlim_t ... found
#11 33.05 checking for uintptr_t ... uintptr_t found
#11 33.08 checking for system byte ordering ... little endian
#11 33.10 checking for size_t size ... 8 bytes
#11 33.14 checking for off_t size ... 8 bytes
#11 33.18 checking for time_t size ... 8 bytes
#11 33.22 checking for AF_INET6 ... found
#11 33.26 checking for setproctitle() ... not found
#11 33.30 checking for pread() ... found
#11 33.33 checking for pwrite() ... found
#11 33.37 checking for pwritev() ... found
#11 33.40 checking for strerrordesc_np() ... found
#11 33.44 checking for localtime_r() ... found
#11 33.48 checking for clock_gettime(CLOCK_MONOTONIC) ... found
#11 33.51 checking for posix_memalign() ... found
#11 33.55 checking for memalign() ... found
#11 33.59 checking for mmap(MAP_ANON|MAP_SHARED) ... found
#11 33.62 checking for mmap("/dev/zero", MAP_SHARED) ... found
#11 33.66 checking for System V shared memory ... found
#11 33.70 checking for POSIX semaphores ... found
#11 33.74 checking for struct msghdr.msg_control ... found
#11 33.78 checking for ioctl(FIONBIO) ... found
#11 33.81 checking for ioctl(FIONREAD) ... found
#11 33.85 checking for struct tm.tm_gmtoff ... found
#11 33.89 checking for struct dirent.d_namlen ... not found
#11 33.91 checking for struct dirent.d_type ... found
#11 33.94 checking for sysconf(_SC_NPROCESSORS_ONLN) ... found
#11 33.98 checking for sysconf(_SC_LEVEL1_DCACHE_LINESIZE) ... found
#11 34.01 checking for openat(), fstatat() ... found
#11 34.05 checking for getaddrinfo() ... found
#11 34.12 checking for PCRE2 library ... not found
#11 34.13 checking for PCRE library ... found
#11 34.17 checking for PCRE JIT support ... found
#11 34.21 checking for OpenSSL library ... found
#11 34.32 checking for zlib library ... found
#11 34.36 checking for libxslt ... found
#11 34.44 checking for libexslt ... found
#11 34.52 checking for GD library ... found
#11 34.57 checking for GD WebP support ... found
#11 34.62 checking for perl
#11 34.62  + perl version: This is perl 5, version 34, subversion 0 (v5.34.0) built for x86_64-linux-gnu-thread-multi
#11 34.74  + perl interpreter multiplicity found
#11 34.75 checking for GeoIP library ... found
#11 34.79 checking for GeoIP IPv6 support ... found
#11 34.83 checking for Google perftools ... not found
#11 34.86 checking for Google perftools in /usr/local/ ... not found
#11 34.88 checking for Google perftools in /opt/local/ ... not found
#11 34.90 checking for Google perftools in /opt/homebrew/ ... not found
#11 34.92 
#11 34.92 ./configure: error: the Google perftools module requires the Google perftools
#11 34.92 library. You can either do not enable the module or install the library.
#11 34.92 
#11 34.93 make: *** No rule to make target 'build', needed by 'default'.  Stop.
#11 DONE 35.2s

#13 [stage-1  8/11] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#13 CACHED

#14 [stage-1  9/11] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#14 CACHED

#15 [stage-1 10/11] COPY --from=builder /app/hysteria /usr/local/bin/hysteria
#15 CACHED

#16 [stage-1  6/11] COPY --from=builder /app/xy /usr/local/bin/xy
#16 CACHED

#17 [stage-1  7/11] COPY --from=builder /app/td /usr/local/bin/td
#17 CACHED

#18 [stage-1 11/11] COPY --from=builder /app/nginx /usr/local/nginx
#18 ERROR: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::4qvmcv84eppyr6mrzakd1cjuy: "/app/nginx": not found
------
 > [stage-1 11/11] COPY --from=builder /app/nginx /usr/local/nginx:
------

 [33m3 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 105)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 105)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "NEZHA_PASSWORD") (line 144)
Dockerfile:184
--------------------
 182 |     COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
 183 |     COPY --from=builder /app/hysteria /usr/local/bin/hysteria
 184 | >>> COPY --from=builder /app/nginx /usr/local/nginx
 185 |     
 186 |     EXPOSE 7860
--------------------
ERROR: failed to build: failed to solve: failed to compute cache key: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::4qvmcv84eppyr6mrzakd1cjuy: "/app/nginx": not found
```

