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

56 directories, 73 files
```

## 镜像: base

### 构建信息
- 目录: base/
- 完整镜像名: ghcr.io/xcq0607/base:latest
- 构建状态: ✅ 成功
- 构建耗时: 138s

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
#14 71.17 	-e "s|%%CONF_PATH%%|/usr/local/bin/nginx/conf/nginx.conf|" \
#14 71.17 	-e "s|%%ERROR_LOG_PATH%%|/usr/local/bin/nginx/logs/error.log|" \
#14 71.17 	< man/nginx.8 > objs/nginx.8
#14 71.17 make[1]: Leaving directory '/app/nginx-1.29.3'
#14 71.17 make -f objs/Makefile install
#14 71.19 make[1]: Entering directory '/app/nginx-1.29.3'
#14 71.19 test -d '/usr/local/bin/nginx' || mkdir -p '/usr/local/bin/nginx'
#14 71.19 test -d '/usr/local/bin/nginx/sbin' \
#14 71.19 	|| mkdir -p '/usr/local/bin/nginx/sbin'
#14 71.19 test ! -f '/usr/local/bin/nginx/sbin/nginx' \
#14 71.19 	|| mv '/usr/local/bin/nginx/sbin/nginx' \
#14 71.19 		'/usr/local/bin/nginx/sbin/nginx.old'
#14 71.19 cp objs/nginx '/usr/local/bin/nginx/sbin/nginx'
#14 71.20 test -d '/usr/local/bin/nginx/conf' \
#14 71.20 	|| mkdir -p '/usr/local/bin/nginx/conf'
#14 71.20 cp conf/koi-win '/usr/local/bin/nginx/conf'
#14 71.20 cp conf/koi-utf '/usr/local/bin/nginx/conf'
#14 71.20 cp conf/win-utf '/usr/local/bin/nginx/conf'
#14 71.20 test -f '/usr/local/bin/nginx/conf/mime.types' \
#14 71.20 	|| cp conf/mime.types '/usr/local/bin/nginx/conf'
#14 71.21 cp conf/mime.types '/usr/local/bin/nginx/conf/mime.types.default'
#14 71.21 test -f '/usr/local/bin/nginx/conf/fastcgi_params' \
#14 71.21 	|| cp conf/fastcgi_params '/usr/local/bin/nginx/conf'
#14 71.21 cp conf/fastcgi_params \
#14 71.21 	'/usr/local/bin/nginx/conf/fastcgi_params.default'
#14 71.21 test -f '/usr/local/bin/nginx/conf/fastcgi.conf' \
#14 71.21 	|| cp conf/fastcgi.conf '/usr/local/bin/nginx/conf'
#14 71.21 cp conf/fastcgi.conf '/usr/local/bin/nginx/conf/fastcgi.conf.default'
#14 71.21 test -f '/usr/local/bin/nginx/conf/uwsgi_params' \
#14 71.21 	|| cp conf/uwsgi_params '/usr/local/bin/nginx/conf'
#14 71.21 cp conf/uwsgi_params \
#14 71.21 	'/usr/local/bin/nginx/conf/uwsgi_params.default'
#14 71.21 test -f '/usr/local/bin/nginx/conf/scgi_params' \
#14 71.21 	|| cp conf/scgi_params '/usr/local/bin/nginx/conf'
#14 71.22 cp conf/scgi_params \
#14 71.22 	'/usr/local/bin/nginx/conf/scgi_params.default'
#14 71.22 test -f '/usr/local/bin/nginx/conf/nginx.conf' \
#14 71.22 	|| cp conf/nginx.conf '/usr/local/bin/nginx/conf/nginx.conf'
#14 71.22 cp conf/nginx.conf '/usr/local/bin/nginx/conf/nginx.conf.default'
#14 71.22 test -d '/usr/local/bin/nginx/logs' \
#14 71.22 	|| mkdir -p '/usr/local/bin/nginx/logs'
#14 71.22 test -d '/usr/local/bin/nginx/logs' \
#14 71.22 	|| mkdir -p '/usr/local/bin/nginx/logs'
#14 71.22 test -d '/usr/local/bin/nginx/html' \
#14 71.22 	|| cp -R html '/usr/local/bin/nginx'
#14 71.22 test -d '/usr/local/bin/nginx/logs' \
#14 71.22 	|| mkdir -p '/usr/local/bin/nginx/logs'
#14 71.22 test -d '/usr/local/bin/nginx/modules' \
#14 71.22 	|| mkdir -p '/usr/local/bin/nginx/modules'
#14 71.23 test ! -f '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so' \
#14 71.23 	|| mv '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so' \
#14 71.23 		'/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so.old'
#14 71.23 cp objs/ngx_http_xslt_filter_module.so '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so'
#14 71.23 test ! -f '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so' \
#14 71.23 	|| mv '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so' \
#14 71.23 		'/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so.old'
#14 71.23 cp objs/ngx_http_image_filter_module.so '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so'
#14 71.23 test ! -f '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so' \
#14 71.23 	|| mv '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so' \
#14 71.23 		'/usr/local/bin/nginx/modules/ngx_http_geoip_module.so.old'
#14 71.23 cp objs/ngx_http_geoip_module.so '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so'
#14 71.23 make[1]: Leaving directory '/app/nginx-1.29.3'
#14 71.23 total 28
#14 71.23 drwxr-xr-x 7 root root 4096 Nov  6 09:12 .
#14 71.23 drwxr-xr-x 1 root root 4096 Nov  6 09:12 ..
#14 71.23 drwxr-xr-x 2 root root 4096 Nov  6 09:12 conf
#14 71.23 drwxr-xr-x 2 root root 4096 Nov  6 09:12 html
#14 71.23 drwxr-xr-x 2 root root 4096 Nov  6 09:12 logs
#14 71.23 drwxr-xr-x 2 root root 4096 Nov  6 09:12 modules
#14 71.23 drwxr-xr-x 2 root root 4096 Nov  6 09:12 sbin
#14 DONE 71.3s

#16 [stage-1  6/11] COPY --from=builder /app/xy /usr/local/bin/xy
#16 DONE 0.0s

#17 [stage-1  7/11] COPY --from=builder /app/td /usr/local/bin/td
#17 DONE 0.0s

#18 [stage-1  8/11] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#18 DONE 0.0s

#19 [stage-1  9/11] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#19 DONE 0.1s

#20 [stage-1 10/11] COPY --from=builder /app/hysteria /usr/local/bin/hysteria
#20 DONE 0.0s

#21 [stage-1 11/11] COPY --from=builder /usr/local/bin/nginx /usr/local/bin/nginx
#21 DONE 0.0s

#22 exporting to image
#22 exporting layers
#22 exporting layers 2.7s done
#22 writing image sha256:f60aac5dcb63d48b9c946aae36a68ad06e661ec1464eee47b8646752cef23b91 done
#22 naming to ghcr.io/xcq0607/base:latest done
#22 DONE 2.7s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 101)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 101)
```

