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
- 构建耗时: 93s

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
#11 62.44 	-e "s|%%CONF_PATH%%|/usr/local/bin/nginx/conf/nginx.conf|" \
#11 62.44 	-e "s|%%ERROR_LOG_PATH%%|/usr/local/bin/nginx/logs/error.log|" \
#11 62.44 	< man/nginx.8 > objs/nginx.8
#11 62.44 make[1]: Leaving directory '/app/nginx-1.29.3'
#11 62.44 make -f objs/Makefile install
#11 62.45 make[1]: Entering directory '/app/nginx-1.29.3'
#11 62.45 test -d '/usr/local/bin/nginx' || mkdir -p '/usr/local/bin/nginx'
#11 62.46 test -d '/usr/local/bin/nginx/sbin' \
#11 62.46 	|| mkdir -p '/usr/local/bin/nginx/sbin'
#11 62.46 test ! -f '/usr/local/bin/nginx/sbin/nginx' \
#11 62.46 	|| mv '/usr/local/bin/nginx/sbin/nginx' \
#11 62.46 		'/usr/local/bin/nginx/sbin/nginx.old'
#11 62.46 cp objs/nginx '/usr/local/bin/nginx/sbin/nginx'
#11 62.47 test -d '/usr/local/bin/nginx/conf' \
#11 62.47 	|| mkdir -p '/usr/local/bin/nginx/conf'
#11 62.47 cp conf/koi-win '/usr/local/bin/nginx/conf'
#11 62.47 cp conf/koi-utf '/usr/local/bin/nginx/conf'
#11 62.47 cp conf/win-utf '/usr/local/bin/nginx/conf'
#11 62.47 test -f '/usr/local/bin/nginx/conf/mime.types' \
#11 62.47 	|| cp conf/mime.types '/usr/local/bin/nginx/conf'
#11 62.47 cp conf/mime.types '/usr/local/bin/nginx/conf/mime.types.default'
#11 62.47 test -f '/usr/local/bin/nginx/conf/fastcgi_params' \
#11 62.47 	|| cp conf/fastcgi_params '/usr/local/bin/nginx/conf'
#11 62.48 cp conf/fastcgi_params \
#11 62.48 	'/usr/local/bin/nginx/conf/fastcgi_params.default'
#11 62.48 test -f '/usr/local/bin/nginx/conf/fastcgi.conf' \
#11 62.48 	|| cp conf/fastcgi.conf '/usr/local/bin/nginx/conf'
#11 62.48 cp conf/fastcgi.conf '/usr/local/bin/nginx/conf/fastcgi.conf.default'
#11 62.48 test -f '/usr/local/bin/nginx/conf/uwsgi_params' \
#11 62.48 	|| cp conf/uwsgi_params '/usr/local/bin/nginx/conf'
#11 62.48 cp conf/uwsgi_params \
#11 62.48 	'/usr/local/bin/nginx/conf/uwsgi_params.default'
#11 62.48 test -f '/usr/local/bin/nginx/conf/scgi_params' \
#11 62.48 	|| cp conf/scgi_params '/usr/local/bin/nginx/conf'
#11 62.48 cp conf/scgi_params \
#11 62.48 	'/usr/local/bin/nginx/conf/scgi_params.default'
#11 62.49 test -f '/usr/local/bin/nginx/conf/nginx.conf' \
#11 62.49 	|| cp conf/nginx.conf '/usr/local/bin/nginx/conf/nginx.conf'
#11 62.49 cp conf/nginx.conf '/usr/local/bin/nginx/conf/nginx.conf.default'
#11 62.49 test -d '/usr/local/bin/nginx/logs' \
#11 62.49 	|| mkdir -p '/usr/local/bin/nginx/logs'
#11 62.49 test -d '/usr/local/bin/nginx/logs' \
#11 62.49 	|| mkdir -p '/usr/local/bin/nginx/logs'
#11 62.49 test -d '/usr/local/bin/nginx/html' \
#11 62.49 	|| cp -R html '/usr/local/bin/nginx'
#11 62.49 test -d '/usr/local/bin/nginx/logs' \
#11 62.49 	|| mkdir -p '/usr/local/bin/nginx/logs'
#11 62.49 test -d '/usr/local/bin/nginx/modules' \
#11 62.49 	|| mkdir -p '/usr/local/bin/nginx/modules'
#11 62.49 test ! -f '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 62.49 	|| mv '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 62.49 		'/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so.old'
#11 62.49 cp objs/ngx_http_xslt_filter_module.so '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so'
#11 62.50 test ! -f '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so' \
#11 62.50 	|| mv '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so' \
#11 62.50 		'/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so.old'
#11 62.50 cp objs/ngx_http_image_filter_module.so '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so'
#11 62.50 test ! -f '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so' \
#11 62.50 	|| mv '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so' \
#11 62.50 		'/usr/local/bin/nginx/modules/ngx_http_geoip_module.so.old'
#11 62.50 cp objs/ngx_http_geoip_module.so '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so'
#11 62.50 make[1]: Leaving directory '/app/nginx-1.29.3'
#11 62.50 total 28
#11 62.50 drwxr-xr-x 7 root root 4096 Nov  6 10:02 .
#11 62.50 drwxr-xr-x 1 root root 4096 Nov  6 10:02 ..
#11 62.50 drwxr-xr-x 2 root root 4096 Nov  6 10:02 conf
#11 62.50 drwxr-xr-x 2 root root 4096 Nov  6 10:02 html
#11 62.50 drwxr-xr-x 2 root root 4096 Nov  6 10:02 logs
#11 62.50 drwxr-xr-x 2 root root 4096 Nov  6 10:02 modules
#11 62.50 drwxr-xr-x 2 root root 4096 Nov  6 10:02 sbin
#11 DONE 62.6s

#13 [stage-1  6/11] COPY --from=builder /app/xy /usr/local/bin/xy
#13 DONE 0.0s

#14 [stage-1  7/11] COPY --from=builder /app/td /usr/local/bin/td
#14 DONE 0.0s

#15 [stage-1  8/11] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#15 DONE 0.0s

#16 [stage-1  9/11] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#16 DONE 0.0s

#17 [stage-1 10/11] COPY --from=builder /app/hysteria /usr/local/bin/hysteria
#17 DONE 0.0s

#18 [stage-1 11/11] COPY --from=builder /usr/local/bin/nginx /usr/local/bin/nginx
#18 DONE 0.0s

#19 exporting to image
#19 exporting layers
#19 exporting layers 2.7s done
#19 writing image sha256:b8e6378806e4571af9487acb3d892a83faca555dd668f2c44800371569c34a66 done
#19 naming to ghcr.io/xcq0607/base:latest done
#19 DONE 2.7s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 100)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 100)
```

