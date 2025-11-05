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
- 构建状态: ✅ 成功
- 构建耗时: 109s

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
#11 70.23 Installing /usr/local/lib/x86_64-linux-gnu/perl/5.34.0/auto/nginx/nginx.so
#11 70.23 Installing /usr/local/lib/x86_64-linux-gnu/perl/5.34.0/nginx.pm
#11 70.23 Installing /usr/local/man/man3/nginx.3pm
#11 70.24 Appending installation info to /usr/local/lib/x86_64-linux-gnu/perl/5.34.0/perllocal.pod
#11 70.26 make[2]: Leaving directory '/app/nginx-1.29.3/objs/src/http/modules/perl'
#11 70.26 test -d '/usr/local/nginx' || mkdir -p '/usr/local/nginx'
#11 70.26 test -d '/usr/local/nginx/sbin' \
#11 70.26 	|| mkdir -p '/usr/local/nginx/sbin'
#11 70.26 test ! -f '/usr/local/nginx/sbin/nginx' \
#11 70.26 	|| mv '/usr/local/nginx/sbin/nginx' \
#11 70.26 		'/usr/local/nginx/sbin/nginx.old'
#11 70.26 cp objs/nginx '/usr/local/nginx/sbin/nginx'
#11 70.27 test -d '/usr/local/nginx/conf' \
#11 70.27 	|| mkdir -p '/usr/local/nginx/conf'
#11 70.27 cp conf/koi-win '/usr/local/nginx/conf'
#11 70.27 cp conf/koi-utf '/usr/local/nginx/conf'
#11 70.27 cp conf/win-utf '/usr/local/nginx/conf'
#11 70.28 test -f '/usr/local/nginx/conf/mime.types' \
#11 70.28 	|| cp conf/mime.types '/usr/local/nginx/conf'
#11 70.28 cp conf/mime.types '/usr/local/nginx/conf/mime.types.default'
#11 70.28 test -f '/usr/local/nginx/conf/fastcgi_params' \
#11 70.28 	|| cp conf/fastcgi_params '/usr/local/nginx/conf'
#11 70.28 cp conf/fastcgi_params \
#11 70.28 	'/usr/local/nginx/conf/fastcgi_params.default'
#11 70.28 test -f '/usr/local/nginx/conf/fastcgi.conf' \
#11 70.28 	|| cp conf/fastcgi.conf '/usr/local/nginx/conf'
#11 70.28 cp conf/fastcgi.conf '/usr/local/nginx/conf/fastcgi.conf.default'
#11 70.28 test -f '/usr/local/nginx/conf/uwsgi_params' \
#11 70.28 	|| cp conf/uwsgi_params '/usr/local/nginx/conf'
#11 70.28 cp conf/uwsgi_params \
#11 70.28 	'/usr/local/nginx/conf/uwsgi_params.default'
#11 70.29 test -f '/usr/local/nginx/conf/scgi_params' \
#11 70.29 	|| cp conf/scgi_params '/usr/local/nginx/conf'
#11 70.29 cp conf/scgi_params \
#11 70.29 	'/usr/local/nginx/conf/scgi_params.default'
#11 70.29 test -f '/usr/local/nginx/conf/nginx.conf' \
#11 70.29 	|| cp conf/nginx.conf '/usr/local/nginx/conf/nginx.conf'
#11 70.29 cp conf/nginx.conf '/usr/local/nginx/conf/nginx.conf.default'
#11 70.29 test -d '/usr/local/nginx/logs' \
#11 70.29 	|| mkdir -p '/usr/local/nginx/logs'
#11 70.29 test -d '/usr/local/nginx/logs' \
#11 70.29 	|| mkdir -p '/usr/local/nginx/logs'
#11 70.29 test -d '/usr/local/nginx/html' \
#11 70.29 	|| cp -R html '/usr/local/nginx'
#11 70.30 test -d '/usr/local/nginx/logs' \
#11 70.30 	|| mkdir -p '/usr/local/nginx/logs'
#11 70.30 test -d '/usr/local/nginx/modules' \
#11 70.30 	|| mkdir -p '/usr/local/nginx/modules'
#11 70.30 test ! -f '/usr/local/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 70.30 	|| mv '/usr/local/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 70.30 		'/usr/local/nginx/modules/ngx_http_xslt_filter_module.so.old'
#11 70.30 cp objs/ngx_http_xslt_filter_module.so '/usr/local/nginx/modules/ngx_http_xslt_filter_module.so'
#11 70.30 test ! -f '/usr/local/nginx/modules/ngx_http_image_filter_module.so' \
#11 70.30 	|| mv '/usr/local/nginx/modules/ngx_http_image_filter_module.so' \
#11 70.30 		'/usr/local/nginx/modules/ngx_http_image_filter_module.so.old'
#11 70.30 cp objs/ngx_http_image_filter_module.so '/usr/local/nginx/modules/ngx_http_image_filter_module.so'
#11 70.30 test ! -f '/usr/local/nginx/modules/ngx_http_geoip_module.so' \
#11 70.30 	|| mv '/usr/local/nginx/modules/ngx_http_geoip_module.so' \
#11 70.30 		'/usr/local/nginx/modules/ngx_http_geoip_module.so.old'
#11 70.30 cp objs/ngx_http_geoip_module.so '/usr/local/nginx/modules/ngx_http_geoip_module.so'
#11 70.30 make[1]: Leaving directory '/app/nginx-1.29.3'
#11 70.30 total 32
#11 70.30 drwxr-xr-x 7 root root 4096 Nov  5 18:49 .
#11 70.30 drwxr-xr-x 1 root root 4096 Nov  5 18:49 ..
#11 70.30 drwxr-xr-x 2 root root 4096 Nov  5 18:49 conf
#11 70.30 drwxr-xr-x 2 root root 4096 Nov  5 18:49 html
#11 70.30 drwxr-xr-x 2 root root 4096 Nov  5 18:49 logs
#11 70.30 drwxr-xr-x 2 root root 4096 Nov  5 18:49 modules
#11 70.30 drwxr-xr-x 2 root root 4096 Nov  5 18:49 sbin
#11 DONE 70.4s

#13 [stage-1  6/11] COPY --from=builder /app/xy /usr/local/bin/xy
#13 DONE 0.0s

#14 [stage-1  7/11] COPY --from=builder /app/td /usr/local/bin/td
#14 DONE 0.0s

#15 [stage-1  8/11] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#15 DONE 0.0s

#16 [stage-1  9/11] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#16 DONE 0.1s

#17 [stage-1 10/11] COPY --from=builder /app/hysteria /usr/local/bin/hysteria
#17 DONE 0.0s

#18 [stage-1 11/11] COPY --from=builder /usr/local/nginx /usr/local/nginx
#18 DONE 0.0s

#19 exporting to image
#19 exporting layers
#19 exporting layers 2.7s done
#19 writing image sha256:f887bd2a78954d3b6daff003739982a1bee19caaed1514b2bdc4e29daa4d908e done
#19 naming to ghcr.io/xcq0607/nezha:latest done
#19 DONE 2.8s

 [33m3 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "NEZHA_PASSWORD") (line 142)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 103)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 103)
```

