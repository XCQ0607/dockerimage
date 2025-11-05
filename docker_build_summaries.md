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
- 构建耗时: 74s

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
#11 68.33 test -d '/app/nginx' || mkdir -p '/app/nginx'
#11 68.33 test -d '/app/nginx/sbin' \
#11 68.33 	|| mkdir -p '/app/nginx/sbin'
#11 68.33 test ! -f '/app/nginx/sbin/nginx' \
#11 68.33 	|| mv '/app/nginx/sbin/nginx' \
#11 68.33 		'/app/nginx/sbin/nginx.old'
#11 68.33 cp objs/nginx '/app/nginx/sbin/nginx'
#11 68.34 test -d '/app/nginx/conf' \
#11 68.34 	|| mkdir -p '/app/nginx/conf'
#11 68.34 cp conf/koi-win '/app/nginx/conf'
#11 68.34 cp conf/koi-utf '/app/nginx/conf'
#11 68.34 cp conf/win-utf '/app/nginx/conf'
#11 68.34 test -f '/app/nginx/conf/mime.types' \
#11 68.34 	|| cp conf/mime.types '/app/nginx/conf'
#11 68.35 cp conf/mime.types '/app/nginx/conf/mime.types.default'
#11 68.35 test -f '/app/nginx/conf/fastcgi_params' \
#11 68.35 	|| cp conf/fastcgi_params '/app/nginx/conf'
#11 68.35 cp conf/fastcgi_params \
#11 68.35 	'/app/nginx/conf/fastcgi_params.default'
#11 68.35 test -f '/app/nginx/conf/fastcgi.conf' \
#11 68.35 	|| cp conf/fastcgi.conf '/app/nginx/conf'
#11 68.35 cp conf/fastcgi.conf '/app/nginx/conf/fastcgi.conf.default'
#11 68.35 test -f '/app/nginx/conf/uwsgi_params' \
#11 68.35 	|| cp conf/uwsgi_params '/app/nginx/conf'
#11 68.35 cp conf/uwsgi_params \
#11 68.35 	'/app/nginx/conf/uwsgi_params.default'
#11 68.36 test -f '/app/nginx/conf/scgi_params' \
#11 68.36 	|| cp conf/scgi_params '/app/nginx/conf'
#11 68.36 cp conf/scgi_params \
#11 68.36 	'/app/nginx/conf/scgi_params.default'
#11 68.36 test -f '/app/nginx/conf/nginx.conf' \
#11 68.36 	|| cp conf/nginx.conf '/app/nginx/conf/nginx.conf'
#11 68.36 cp conf/nginx.conf '/app/nginx/conf/nginx.conf.default'
#11 68.36 test -d '/app/nginx/logs' \
#11 68.36 	|| mkdir -p '/app/nginx/logs'
#11 68.36 test -d '/app/nginx/logs' \
#11 68.36 	|| mkdir -p '/app/nginx/logs'
#11 68.36 test -d '/app/nginx/html' \
#11 68.36 	|| cp -R html '/app/nginx'
#11 68.36 test -d '/app/nginx/logs' \
#11 68.36 	|| mkdir -p '/app/nginx/logs'
#11 68.37 test -d '/app/nginx/modules' \
#11 68.37 	|| mkdir -p '/app/nginx/modules'
#11 68.37 test ! -f '/app/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 68.37 	|| mv '/app/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 68.37 		'/app/nginx/modules/ngx_http_xslt_filter_module.so.old'
#11 68.37 cp objs/ngx_http_xslt_filter_module.so '/app/nginx/modules/ngx_http_xslt_filter_module.so'
#11 68.37 test ! -f '/app/nginx/modules/ngx_http_image_filter_module.so' \
#11 68.37 	|| mv '/app/nginx/modules/ngx_http_image_filter_module.so' \
#11 68.37 		'/app/nginx/modules/ngx_http_image_filter_module.so.old'
#11 68.37 cp objs/ngx_http_image_filter_module.so '/app/nginx/modules/ngx_http_image_filter_module.so'
#11 68.37 test ! -f '/app/nginx/modules/ngx_http_geoip_module.so' \
#11 68.37 	|| mv '/app/nginx/modules/ngx_http_geoip_module.so' \
#11 68.37 		'/app/nginx/modules/ngx_http_geoip_module.so.old'
#11 68.37 cp objs/ngx_http_geoip_module.so '/app/nginx/modules/ngx_http_geoip_module.so'
#11 68.37 make[1]: Leaving directory '/app/nginx-1.29.3'
#11 68.37 total 28
#11 68.37 drwxr-xr-x 7 root root 4096 Nov  5 17:54 .
#11 68.37 drwxr-xr-x 1 root root 4096 Nov  5 17:54 ..
#11 68.37 drwxr-xr-x 2 root root 4096 Nov  5 17:54 conf
#11 68.37 drwxr-xr-x 2 root root 4096 Nov  5 17:54 html
#11 68.37 drwxr-xr-x 2 root root 4096 Nov  5 17:54 logs
#11 68.37 drwxr-xr-x 2 root root 4096 Nov  5 17:54 modules
#11 68.37 drwxr-xr-x 2 root root 4096 Nov  5 17:54 sbin
#11 DONE 68.5s

#13 [stage-1  7/11] COPY --from=builder /app/td /usr/local/bin/td
#13 CACHED

#14 [stage-1  8/11] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 CACHED

#15 [stage-1  9/11] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 CACHED

#16 [stage-1 10/11] COPY --from=builder /app/hysteria /usr/local/bin/hysteria
#16 CACHED

#17 [stage-1  6/11] COPY --from=builder /app/xy /usr/local/bin/xy
#17 CACHED

#18 [stage-1 11/11] COPY --from=builder /app/nginx/ /usr/local/nginx
#18 ERROR: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::tdm96f6q334rgqcl7vcs7fl6z: "/app/nginx": not found
------
 > [stage-1 11/11] COPY --from=builder /app/nginx/ /usr/local/nginx:
------

 [33m3 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 103)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 103)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "NEZHA_PASSWORD") (line 142)
Dockerfile:182
--------------------
 180 |     COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
 181 |     COPY --from=builder /app/hysteria /usr/local/bin/hysteria
 182 | >>> COPY --from=builder /app/nginx/ /usr/local/nginx
 183 |     
 184 |     EXPOSE 7860
--------------------
ERROR: failed to build: failed to solve: failed to compute cache key: failed to calculate checksum of ref 53d5b372-3a00-4865-8d81-0d2be474f41b::tdm96f6q334rgqcl7vcs7fl6z: "/app/nginx": not found
```

