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
- 构建耗时: 99s

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
#11 65.38 Files found in blib/arch: installing files in blib/lib into architecture dependent library tree
#11 65.38 Installing /usr/local/lib/x86_64-linux-gnu/perl/5.34.0/auto/nginx/nginx.so
#11 65.38 Installing /usr/local/lib/x86_64-linux-gnu/perl/5.34.0/nginx.pm
#11 65.38 Installing /usr/local/man/man3/nginx.3pm
#11 65.39 Appending installation info to /usr/local/lib/x86_64-linux-gnu/perl/5.34.0/perllocal.pod
#11 65.41 make[2]: Leaving directory '/app/nginx-1.29.3/objs/src/http/modules/perl'
#11 65.41 test -d '/usr/local/bin/nginx' || mkdir -p '/usr/local/bin/nginx'
#11 65.41 test -d '/usr/local/bin/nginx/sbin' \
#11 65.41 	|| mkdir -p '/usr/local/bin/nginx/sbin'
#11 65.41 test ! -f '/usr/local/bin/nginx/sbin/nginx' \
#11 65.41 	|| mv '/usr/local/bin/nginx/sbin/nginx' \
#11 65.41 		'/usr/local/bin/nginx/sbin/nginx.old'
#11 65.41 cp objs/nginx '/usr/local/bin/nginx/sbin/nginx'
#11 65.42 test -d '/usr/local/bin/nginx/conf' \
#11 65.42 	|| mkdir -p '/usr/local/bin/nginx/conf'
#11 65.42 cp conf/koi-win '/usr/local/bin/nginx/conf'
#11 65.42 cp conf/koi-utf '/usr/local/bin/nginx/conf'
#11 65.42 cp conf/win-utf '/usr/local/bin/nginx/conf'
#11 65.42 test -f '/usr/local/bin/nginx/conf/mime.types' \
#11 65.42 	|| cp conf/mime.types '/usr/local/bin/nginx/conf'
#11 65.42 cp conf/mime.types '/usr/local/bin/nginx/conf/mime.types.default'
#11 65.43 test -f '/usr/local/bin/nginx/conf/fastcgi_params' \
#11 65.43 	|| cp conf/fastcgi_params '/usr/local/bin/nginx/conf'
#11 65.43 cp conf/fastcgi_params \
#11 65.43 	'/usr/local/bin/nginx/conf/fastcgi_params.default'
#11 65.43 test -f '/usr/local/bin/nginx/conf/fastcgi.conf' \
#11 65.43 	|| cp conf/fastcgi.conf '/usr/local/bin/nginx/conf'
#11 65.43 cp conf/fastcgi.conf '/usr/local/bin/nginx/conf/fastcgi.conf.default'
#11 65.43 test -f '/usr/local/bin/nginx/conf/uwsgi_params' \
#11 65.43 	|| cp conf/uwsgi_params '/usr/local/bin/nginx/conf'
#11 65.43 cp conf/uwsgi_params \
#11 65.43 	'/usr/local/bin/nginx/conf/uwsgi_params.default'
#11 65.43 test -f '/usr/local/bin/nginx/conf/scgi_params' \
#11 65.43 	|| cp conf/scgi_params '/usr/local/bin/nginx/conf'
#11 65.44 cp conf/scgi_params \
#11 65.44 	'/usr/local/bin/nginx/conf/scgi_params.default'
#11 65.44 test -f '/usr/local/bin/nginx/conf/nginx.conf' \
#11 65.44 	|| cp conf/nginx.conf '/usr/local/bin/nginx/conf/nginx.conf'
#11 65.44 cp conf/nginx.conf '/usr/local/bin/nginx/conf/nginx.conf.default'
#11 65.44 test -d '/usr/local/bin/nginx/logs' \
#11 65.44 	|| mkdir -p '/usr/local/bin/nginx/logs'
#11 65.44 test -d '/usr/local/bin/nginx/logs' \
#11 65.44 	|| mkdir -p '/usr/local/bin/nginx/logs'
#11 65.44 test -d '/usr/local/bin/nginx/html' \
#11 65.44 	|| cp -R html '/usr/local/bin/nginx'
#11 65.44 test -d '/usr/local/bin/nginx/logs' \
#11 65.44 	|| mkdir -p '/usr/local/bin/nginx/logs'
#11 65.44 test -d '/usr/local/bin/nginx/modules' \
#11 65.44 	|| mkdir -p '/usr/local/bin/nginx/modules'
#11 65.45 test ! -f '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 65.45 	|| mv '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 65.45 		'/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so.old'
#11 65.45 cp objs/ngx_http_xslt_filter_module.so '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so'
#11 65.45 test ! -f '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so' \
#11 65.45 	|| mv '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so' \
#11 65.45 		'/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so.old'
#11 65.45 cp objs/ngx_http_image_filter_module.so '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so'
#11 65.45 test ! -f '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so' \
#11 65.45 	|| mv '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so' \
#11 65.45 		'/usr/local/bin/nginx/modules/ngx_http_geoip_module.so.old'
#11 65.45 cp objs/ngx_http_geoip_module.so '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so'
#11 65.45 make[1]: Leaving directory '/app/nginx-1.29.3'
#11 65.45 total 28
#11 65.45 drwxr-xr-x 7 root root 4096 Nov  6 04:19 .
#11 65.45 drwxr-xr-x 1 root root 4096 Nov  6 04:19 ..
#11 65.45 drwxr-xr-x 2 root root 4096 Nov  6 04:19 conf
#11 65.45 drwxr-xr-x 2 root root 4096 Nov  6 04:19 html
#11 65.45 drwxr-xr-x 2 root root 4096 Nov  6 04:19 logs
#11 65.45 drwxr-xr-x 2 root root 4096 Nov  6 04:19 modules
#11 65.45 drwxr-xr-x 2 root root 4096 Nov  6 04:19 sbin
#11 DONE 65.5s

#12 [stage-1  5/10] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.0s

#13 [stage-1  6/10] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.0s

#14 [stage-1  7/10] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.0s

#15 [stage-1  8/10] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 DONE 0.0s

#16 [stage-1  9/10] COPY --from=builder /app/hysteria /usr/local/bin/hysteria
#16 DONE 0.0s

#17 [stage-1 10/10] COPY --from=builder /usr/local/bin/nginx /usr/local/bin/nginx
#17 DONE 0.0s

#18 exporting to image
#18 exporting layers
#18 exporting layers 2.5s done
#18 writing image sha256:8b3c27edf549eec1333c3229c97bd6f39fd82962ccb571f08f4731443b5c4ec4 done
#18 naming to ghcr.io/xcq0607/base:latest done
#18 DONE 2.5s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 102)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 102)
```

