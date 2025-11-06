# Docker Build Summaries

## Repository File Structure
```
.
├── base
│   ├── Dockerfile
│   ├── app
│   │   ├── backup
│   │   ├── cron
│   │   ├── healthcheck.sh
│   │   ├── hysteria
│   │   ├── keepalive.sh
│   │   ├── nginx
│   │   ├── setup-cron.sh
│   │   ├── setup-nginx.sh
│   │   ├── setup.sh
│   │   ├── supervisor
│   │   └── xy
│   ├── build.flag
│   └── entrypoint.sh
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

56 directories, 74 files
```

## 镜像: base

### 构建信息
- 目录: base/
- 完整镜像名: ghcr.io/xcq0607/base:latest
- 构建状态: ❌ 失败
- 构建耗时: 63s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/base:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-base ghcr.io/xcq0607/base:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/base:latest
```

### 构建日志

```
#11 58.75 objs/src/http/modules/ngx_http_grpc_module.o \
#11 58.75 objs/src/http/modules/perl/ngx_http_perl_module.o \
#11 58.75 objs/src/http/modules/ngx_http_memcached_module.o \
#11 58.75 objs/src/http/modules/ngx_http_empty_gif_module.o \
#11 58.75 objs/src/http/modules/ngx_http_browser_module.o \
#11 58.75 objs/src/http/modules/ngx_http_secure_link_module.o \
#11 58.75 objs/src/http/modules/ngx_http_degradation_module.o \
#11 58.75 objs/src/http/modules/ngx_http_flv_module.o \
#11 58.75 objs/src/http/modules/ngx_http_mp4_module.o \
#11 58.75 objs/src/http/modules/ngx_http_upstream_hash_module.o \
#11 58.75 objs/src/http/modules/ngx_http_upstream_ip_hash_module.o \
#11 58.75 objs/src/http/modules/ngx_http_upstream_least_conn_module.o \
#11 58.75 objs/src/http/modules/ngx_http_upstream_random_module.o \
#11 58.75 objs/src/http/modules/ngx_http_upstream_keepalive_module.o \
#11 58.75 objs/src/http/modules/ngx_http_upstream_zone_module.o \
#11 58.75 objs/src/http/modules/ngx_http_stub_status_module.o \
#11 58.75 objs/src/mail/ngx_mail.o \
#11 58.75 objs/src/mail/ngx_mail_core_module.o \
#11 58.75 objs/src/mail/ngx_mail_handler.o \
#11 58.75 objs/src/mail/ngx_mail_parse.o \
#11 58.75 objs/src/mail/ngx_mail_ssl_module.o \
#11 58.75 objs/src/mail/ngx_mail_pop3_module.o \
#11 58.75 objs/src/mail/ngx_mail_pop3_handler.o \
#11 58.75 objs/src/mail/ngx_mail_imap_module.o \
#11 58.75 objs/src/mail/ngx_mail_imap_handler.o \
#11 58.75 objs/src/mail/ngx_mail_smtp_module.o \
#11 58.75 objs/src/mail/ngx_mail_smtp_handler.o \
#11 58.75 objs/src/mail/ngx_mail_auth_http_module.o \
#11 58.75 objs/src/mail/ngx_mail_proxy_module.o \
#11 58.75 objs/src/mail/ngx_mail_realip_module.o \
#11 58.75 objs/src/stream/ngx_stream.o \
#11 58.75 objs/src/stream/ngx_stream_variables.o \
#11 58.75 objs/src/stream/ngx_stream_script.o \
#11 58.75 objs/src/stream/ngx_stream_handler.o \
#11 58.75 objs/src/stream/ngx_stream_core_module.o \
#11 58.75 objs/src/stream/ngx_stream_log_module.o \
#11 58.75 objs/src/stream/ngx_stream_proxy_module.o \
#11 58.75 objs/src/stream/ngx_stream_upstream.o \
#11 58.75 objs/src/stream/ngx_stream_upstream_round_robin.o \
#11 58.75 objs/src/stream/ngx_stream_write_filter_module.o \
#11 58.75 objs/src/stream/ngx_stream_ssl_module.o \
#11 58.75 objs/src/stream/ngx_stream_realip_module.o \
#11 58.75 objs/src/stream/ngx_stream_limit_conn_module.o \
#11 58.75 objs/src/stream/ngx_stream_access_module.o \
#11 58.75 objs/src/stream/ngx_stream_geo_module.o \
#11 58.75 objs/src/stream/ngx_stream_map_module.o \
#11 58.75 objs/src/stream/ngx_stream_split_clients_module.o \
#11 58.75 objs/src/stream/ngx_stream_return_module.o \
#11 58.75 objs/src/stream/ngx_stream_pass_module.o \
#11 58.75 objs/src/stream/ngx_stream_set_module.o \
#11 58.75 objs/src/stream/ngx_stream_upstream_hash_module.o \
#11 58.75 objs/src/stream/ngx_stream_upstream_least_conn_module.o \
#11 58.75 objs/src/stream/ngx_stream_upstream_random_module.o \
#11 58.75 objs/src/stream/ngx_stream_upstream_zone_module.o \
#11 58.75 objs/src/stream/ngx_stream_ssl_preread_module.o \
#11 58.75 objs/ngx_modules.o \
#11 58.75 -lpthread -lcrypt -lpcre -lssl -lcrypto -lpthread -lz \
#11 58.75 -Wl,-E -fstack-protector-strong -L/usr/local/lib -L/usr/lib/x86_64-linux-gnu/perl/5.34/CORE -lperl -ldl -lm -lpthread -lc -lcrypt \
#11 58.75 -Wl,-E
#11 58.78 /usr/bin/ld: cannot find -lperl: No such file or directory
#11 58.79 collect2: error: ld returned 1 exit status
#11 58.79 make[1]: *** [objs/Makefile:345: objs/nginx] Error 1
#11 58.79 make[1]: Leaving directory '/app/nginx-1.29.3'
#11 58.79 make: *** [Makefile:10: build] Error 2
#11 58.79 ls: cannot access '/usr/local/bin/nginx': No such file or directory
#11 DONE 58.8s

#12 [stage-1  5/10] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.0s

#13 [stage-1  8/10] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#13 CACHED

#14 [stage-1  9/10] COPY --from=builder /app/hysteria /usr/local/bin/hysteria
#14 CACHED

#15 [stage-1  6/10] COPY --from=builder /app/td /usr/local/bin/td
#15 CACHED

#16 [stage-1  7/10] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#16 CACHED

#17 [stage-1 10/10] COPY --from=builder /usr/local/bin/nginx /usr/local/bin/nginx
#17 ERROR: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::9u4m7xaa2yjb97lw75ttp976m: "/usr/local/bin/nginx": not found
------
 > [stage-1 10/10] COPY --from=builder /usr/local/bin/nginx /usr/local/bin/nginx:
------

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 102)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 102)
Dockerfile:167
--------------------
 165 |     COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
 166 |     COPY --from=builder /app/hysteria /usr/local/bin/hysteria
 167 | >>> COPY --from=builder /usr/local/bin/nginx /usr/local/bin/nginx
 168 |     
 169 |     EXPOSE 7860
--------------------
ERROR: failed to build: failed to solve: failed to compute cache key: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::9u4m7xaa2yjb97lw75ttp976m: "/usr/local/bin/nginx": not found
```

