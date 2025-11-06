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
- 构建耗时: 110s

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
#11 71.17 make -f objs/Makefile install
#11 71.19 make[1]: Entering directory '/app/nginx-1.29.3'
#11 71.19 cd objs/src/http/modules/perl && make install
#11 71.19 make[2]: Entering directory '/app/nginx-1.29.3/objs/src/http/modules/perl'
#11 71.19 "/usr/bin/perl" -MExtUtils::Command::MM -e 'cp_nonempty' -- nginx.bs blib/arch/auto/nginx/nginx.bs 644
#11 71.24 Manifying 1 pod document
#11 71.27 Files found in blib/arch: installing files in blib/lib into architecture dependent library tree
#11 71.27 Installing /usr/local/lib/x86_64-linux-gnu/perl/5.34.0/auto/nginx/nginx.so
#11 71.27 Installing /usr/local/lib/x86_64-linux-gnu/perl/5.34.0/nginx.pm
#11 71.27 Installing /usr/local/man/man3/nginx.3pm
#11 71.28 Appending installation info to /usr/local/lib/x86_64-linux-gnu/perl/5.34.0/perllocal.pod
#11 71.30 make[2]: Leaving directory '/app/nginx-1.29.3/objs/src/http/modules/perl'
#11 71.30 test -d '/usr/local/bin/nginx' || mkdir -p '/usr/local/bin/nginx'
#11 71.30 test -d '/usr/local/bin/nginx/sbin' \
#11 71.30 	|| mkdir -p '/usr/local/bin/nginx/sbin'
#11 71.30 test ! -f '/usr/local/bin/nginx/sbin/nginx' \
#11 71.30 	|| mv '/usr/local/bin/nginx/sbin/nginx' \
#11 71.30 		'/usr/local/bin/nginx/sbin/nginx.old'
#11 71.31 cp objs/nginx '/usr/local/bin/nginx/sbin/nginx'
#11 71.31 test -d '/usr/local/bin/nginx/conf' \
#11 71.31 	|| mkdir -p '/usr/local/bin/nginx/conf'
#11 71.31 cp conf/koi-win '/usr/local/bin/nginx/conf'
#11 71.31 cp conf/koi-utf '/usr/local/bin/nginx/conf'
#11 71.32 cp conf/win-utf '/usr/local/bin/nginx/conf'
#11 71.32 test -f '/usr/local/bin/nginx/conf/mime.types' \
#11 71.32 	|| cp conf/mime.types '/usr/local/bin/nginx/conf'
#11 71.32 cp conf/mime.types '/usr/local/bin/nginx/conf/mime.types.default'
#11 71.32 test -f '/usr/local/bin/nginx/conf/fastcgi_params' \
#11 71.32 	|| cp conf/fastcgi_params '/usr/local/bin/nginx/conf'
#11 71.32 cp conf/fastcgi_params \
#11 71.32 	'/usr/local/bin/nginx/conf/fastcgi_params.default'
#11 71.32 test -f '/usr/local/bin/nginx/conf/fastcgi.conf' \
#11 71.32 	|| cp conf/fastcgi.conf '/usr/local/bin/nginx/conf'
#11 71.32 cp conf/fastcgi.conf '/usr/local/bin/nginx/conf/fastcgi.conf.default'
#11 71.33 test -f '/usr/local/bin/nginx/conf/uwsgi_params' \
#11 71.33 	|| cp conf/uwsgi_params '/usr/local/bin/nginx/conf'
#11 71.33 cp conf/uwsgi_params \
#11 71.33 	'/usr/local/bin/nginx/conf/uwsgi_params.default'
#11 71.33 test -f '/usr/local/bin/nginx/conf/scgi_params' \
#11 71.33 	|| cp conf/scgi_params '/usr/local/bin/nginx/conf'
#11 71.33 cp conf/scgi_params \
#11 71.33 	'/usr/local/bin/nginx/conf/scgi_params.default'
#11 71.33 test -f '/usr/local/bin/nginx/conf/nginx.conf' \
#11 71.33 	|| cp conf/nginx.conf '/usr/local/bin/nginx/conf/nginx.conf'
#11 71.33 cp conf/nginx.conf '/usr/local/bin/nginx/conf/nginx.conf.default'
#11 71.33 test -d '/usr/local/bin/nginx/logs' \
#11 71.33 	|| mkdir -p '/usr/local/bin/nginx/logs'
#11 71.33 test -d '/usr/local/bin/nginx/logs' \
#11 71.33 	|| mkdir -p '/usr/local/bin/nginx/logs'
#11 71.34 test -d '/usr/local/bin/nginx/html' \
#11 71.34 	|| cp -R html '/usr/local/bin/nginx'
#11 71.34 test -d '/usr/local/bin/nginx/logs' \
#11 71.34 	|| mkdir -p '/usr/local/bin/nginx/logs'
#11 71.34 test -d '/usr/local/bin/nginx/modules' \
#11 71.34 	|| mkdir -p '/usr/local/bin/nginx/modules'
#11 71.34 test ! -f '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 71.34 	|| mv '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so' \
#11 71.34 		'/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so.old'
#11 71.34 cp objs/ngx_http_xslt_filter_module.so '/usr/local/bin/nginx/modules/ngx_http_xslt_filter_module.so'
#11 71.34 test ! -f '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so' \
#11 71.34 	|| mv '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so' \
#11 71.34 		'/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so.old'
#11 71.34 cp objs/ngx_http_image_filter_module.so '/usr/local/bin/nginx/modules/ngx_http_image_filter_module.so'
#11 71.34 test ! -f '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so' \
#11 71.34 	|| mv '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so' \
#11 71.34 		'/usr/local/bin/nginx/modules/ngx_http_geoip_module.so.old'
#11 71.34 cp objs/ngx_http_geoip_module.so '/usr/local/bin/nginx/modules/ngx_http_geoip_module.so'
#11 71.35 make[1]: Leaving directory '/app/nginx-1.29.3'
#11 71.35 ls: cannot access '/usr/local/nginx': No such file or directory
#11 DONE 71.4s

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
#19 exporting layers 2.9s done
#19 writing image sha256:9e9c0dab7886f0cad0a3193cdfb7f9bd12251ed7856d4235077b69baac88b880 done
#19 naming to ghcr.io/xcq0607/nezha:latest done
#19 DONE 2.9s

 [33m3 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 103)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 103)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "NEZHA_PASSWORD") (line 142)
```

