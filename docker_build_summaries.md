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
├── gapi
│   ├── Dockerfile
│   ├── LICENSE
│   ├── black-browser.js
│   ├── build.flag
│   ├── models.json
│   ├── package-lock.json
│   ├── package.json
│   ├── save-auth.js
│   └── unified-server.js
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

57 directories, 82 files
```

## 镜像: gapi

### 构建信息
- 目录: gapi/
- 完整镜像名: ghcr.io/xcq0607/gapi:latest
- 构建状态: ❌ 失败
- 构建耗时: 46s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/gapi:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-gapi ghcr.io/xcq0607/gapi:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/gapi:latest
```

### 构建日志

```
#11 10.76   inflating: fonts/windows/palab.ttf  
#11 10.77   inflating: fonts/windows/palabi.ttf  
#11 10.77   inflating: fonts/windows/palai.ttf  
#11 10.77   inflating: fonts/windows/phagspa.ttf  
#11 10.77   inflating: fonts/windows/phagspab.ttf  
#11 10.77   inflating: fonts/windows/segmdl2.ttf  
#11 10.78   inflating: fonts/windows/segoepr.ttf  
#11 10.78   inflating: fonts/windows/segoeprb.ttf  
#11 10.78   inflating: fonts/windows/segoesc.ttf  
#11 10.79   inflating: fonts/windows/segoescb.ttf  
#11 10.79   inflating: fonts/windows/segoeui.ttf  
#11 10.80   inflating: fonts/windows/segoeuib.ttf  
#11 10.81   inflating: fonts/windows/segoeuii.ttf  
#11 10.82   inflating: fonts/windows/segoeuil.ttf  
#11 10.82   inflating: fonts/windows/segoeuisl.ttf  
#11 10.83   inflating: fonts/windows/segoeuiz.ttf  
#11 10.84   inflating: fonts/windows/seguibl.ttf  
#11 10.84   inflating: fonts/windows/seguibli.ttf  
#11 10.84   inflating: fonts/windows/seguiemj.ttf  
#11 10.86   inflating: fonts/windows/seguihis.ttf  
#11 10.88   inflating: fonts/windows/seguili.ttf  
#11 10.88   inflating: fonts/windows/seguisb.ttf  
#11 10.89   inflating: fonts/windows/seguisbi.ttf  
#11 10.90   inflating: fonts/windows/seguisli.ttf  
#11 10.90   inflating: fonts/windows/seguisym.ttf  
#11 10.92   inflating: fonts/windows/simsun.ttc  
#11 11.07   inflating: fonts/windows/simsunb.ttf  
#11 11.21   inflating: fonts/windows/sylfaen.ttf  
#11 11.21   inflating: fonts/windows/symbol.ttf  
#11 11.21   inflating: fonts/windows/tahoma.ttf  
#11 11.22   inflating: fonts/windows/tahomabd.ttf  
#11 11.23   inflating: fonts/windows/taile.ttf  
#11 11.23   inflating: fonts/windows/taileb.ttf  
#11 11.23   inflating: fonts/windows/times.ttf  
#11 11.24   inflating: fonts/windows/timesbd.ttf  
#11 11.25   inflating: fonts/windows/timesbi.ttf  
#11 11.26   inflating: fonts/windows/timesi.ttf  
#11 11.27   inflating: fonts/windows/trebuc.ttf  
#11 11.27   inflating: fonts/windows/trebucbd.ttf  
#11 11.28   inflating: fonts/windows/trebucbi.ttf  
#11 11.28   inflating: fonts/windows/trebucit.ttf  
#11 11.28   inflating: fonts/windows/verdana.ttf  
#11 11.28   inflating: fonts/windows/verdanab.ttf  
#11 11.29   inflating: fonts/windows/verdanai.ttf  
#11 11.29   inflating: fonts/windows/verdanaz.ttf  
#11 11.29   inflating: fonts/windows/webdings.ttf  
#11 11.29   inflating: fonts/windows/wingding.ttf  
#11 11.29    creating: gmp-clearkey/
#11 11.29    creating: gmp-clearkey/0.1/
#11 11.29   inflating: gmp-clearkey/0.1/libclearkey.so  
#11 11.29   inflating: gmp-clearkey/0.1/manifest.json  
#11 11.29   inflating: libfreeblpriv3.so       
#11 11.30   inflating: libgkcodecs.so          
#11 11.37   inflating: libipcclientcerts.so    
#11 11.38   inflating: liblgpllibs.so          
#11 11.38   inflating: libmozavcodec.so        
#11 11.41   inflating: libmozavutil.so         
#11 11.42   inflating: libmozgtk.so            
#11 11.42   inflating: libmozsandbox.so        
#11 11.42   inflating: libmozsqlite3.so        
#11 11.43   inflating: libmozwayland.so        
#11 11.43   inflating: libnspr4.so             
#11 11.43   inflating: libnss3.so              
#11 11.44   inflating: libnssckbi.so           
#11 11.44   inflating: libnssutil3.so          
#11 11.45   inflating: libplc4.so              
#11 11.45   inflating: libplds4.so             
#11 11.45   inflating: libsmime3.so            
#11 11.45   inflating: libsoftokn3.so          
#11 11.45   inflating: libssl3.so              
#11 11.45   inflating: libxul.so               
#11 12.68   inflating: omni.ja                 
#11 12.92   inflating: platform.ini            
#11 12.92   inflating: precomplete             
#11 12.92   inflating: properties.json         
#11 12.92  extracting: removed-files           
#11 ERROR: process "/bin/sh -c curl -sSL \"https://github.com/daijro/camoufox/releases/download/v${CAMOUFOX_VERSION}/camoufox-${CAMOUFOX_VERSION}-lin.x86_64.zip\" -o camoufox.zip &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox" did not complete successfully: exit code: 1
------
 > [6/8] RUN curl -sSL "https://github.com/daijro/camoufox/releases/download/v135.0.1-beta.24/camoufox-135.0.1-beta.24-lin.x86_64.zip" -o camoufox.zip &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox:
10.88   inflating: fonts/windows/seguisb.ttf  
10.89   inflating: fonts/windows/seguisbi.ttf  
10.90   inflating: fonts/windows/seguisli.ttf  
10.90   inflating: fonts/windows/seguisym.ttf  
10.92   inflating: fonts/windows/simsun.ttc  
11.07   inflating: fonts/windows/simsunb.ttf  

12.92   inflating: precomplete             
12.92   inflating: properties.json         
12.92  extracting: removed-files           
------
Dockerfile:22
--------------------
  21 |     ARG CAMOUFOX_VERSION=135.0.1-beta.24
  22 | >>> RUN curl -sSL "https://github.com/daijro/camoufox/releases/download/v${CAMOUFOX_VERSION}/camoufox-${CAMOUFOX_VERSION}-lin.x86_64.zip" -o camoufox.zip && \
  23 | >>>     unzip camoufox.zip && \
  24 | >>>     rm camoufox.zip && \
  25 | >>>     chmod +x /app/camoufox/camoufox
  26 |     
--------------------
ERROR: failed to build: failed to solve: process "/bin/sh -c curl -sSL \"https://github.com/daijro/camoufox/releases/download/v${CAMOUFOX_VERSION}/camoufox-${CAMOUFOX_VERSION}-lin.x86_64.zip\" -o camoufox.zip &&     unzip camoufox.zip &&     rm camoufox.zip &&     chmod +x /app/camoufox/camoufox" did not complete successfully: exit code: 1
```

