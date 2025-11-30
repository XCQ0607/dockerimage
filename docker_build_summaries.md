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
├── gwebdav
│   ├── Dockerfile
│   ├── build.flag
│   ├── entrypoint.sh
│   ├── gdrive
│   │   ├── cache.go
│   │   ├── file_info.go
│   │   ├── file_system.go
│   │   ├── gdrive.go
│   │   ├── oauth2.go
│   │   ├── readonly_file.go
│   │   └── writable_file.go
│   ├── go.mod
│   ├── go.sum
│   ├── justfile
│   ├── litmus
│   │   └── Dockerfile
│   └── main.go
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

60 directories, 97 files
```

## 镜像: gwebdav

### 构建信息
- 目录: gwebdav/
- 完整镜像名: ghcr.io/xcq0607/gwebdav:latest
- 构建状态: ✅ 成功
- 构建耗时: 48s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/gwebdav:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-gwebdav ghcr.io/xcq0607/gwebdav:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/gwebdav:latest
```

### 构建日志

```
#9 3.626 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 4935 files and directories currently installed.)
#9 3.631 Preparing to unpack .../openssl_3.5.4-1~deb13u1_amd64.deb ...
#9 3.632 Unpacking openssl (3.5.4-1~deb13u1) ...
#9 3.697 Selecting previously unselected package ca-certificates.
#9 3.699 Preparing to unpack .../ca-certificates_20250419_all.deb ...
#9 3.700 Unpacking ca-certificates (20250419) ...
#9 3.746 Setting up openssl (3.5.4-1~deb13u1) ...
#9 3.751 Setting up ca-certificates (20250419) ...
#9 3.844 debconf: unable to initialize frontend: Dialog
#9 3.844 debconf: (TERM is not set, so the dialog frontend is not usable.)
#9 3.844 debconf: falling back to frontend: Readline
#9 3.844 debconf: unable to initialize frontend: Readline
#9 3.845 debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC entries checked: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.40.1 /usr/local/share/perl/5.40.1 /usr/lib/x86_64-linux-gnu/perl5/5.40 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-linux-gnu/perl/5.40 /usr/share/perl/5.40 /usr/local/lib/site_perl) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 8.)
#9 3.845 debconf: falling back to frontend: Teletype
#9 3.850 debconf: unable to initialize frontend: Teletype
#9 3.850 debconf: (This frontend requires a controlling tty.)
#9 3.850 debconf: falling back to frontend: Noninteractive
#9 4.350 Updating certificates in /etc/ssl/certs...
#9 5.008 150 added, 0 removed; done.
#9 5.027 Processing triggers for ca-certificates (20250419) ...
#9 5.031 Updating certificates in /etc/ssl/certs...
#9 5.595 0 added, 0 removed; done.
#9 5.595 Running hooks in /etc/ca-certificates/update.d...
#9 5.597 done.
#9 DONE 5.7s

#10 [stage-1 3/6] WORKDIR /root/
#10 DONE 0.0s

#11 [stage-0 1/3] FROM docker.io/library/golang:latest@sha256:698183780de28062f4ef46f82a79ec0ae69d2d22f7b160cf69f71ea8d98bf25d
#11 resolve docker.io/library/golang:latest@sha256:698183780de28062f4ef46f82a79ec0ae69d2d22f7b160cf69f71ea8d98bf25d done
#11 sha256:406139dc5f8e5d79c709b8e637a0c1fc5907ed1521964b3ae419d4ecb002560e 2.32kB / 2.32kB done
#11 sha256:53c88f1dfeb79b2f207f7f1a03a45e0dc5ed208b9f496de16b98f81189dc0392 49.29MB / 49.29MB 0.6s done
#11 sha256:eae668646f447b181fe300ae6756351b6167aa2578be449b167ba79ed4926798 25.61MB / 25.61MB 0.4s done
#11 sha256:698183780de28062f4ef46f82a79ec0ae69d2d22f7b160cf69f71ea8d98bf25d 9.69kB / 9.69kB done
#11 sha256:8a14b4331ccfa06f64ae6f1ef82fea31a0af3a8792e62473e770745f87444120 3.04kB / 3.04kB done
#11 sha256:ff2e6e687b6ce78177a4cac678dd533c8e72b97469f030783b6bb491f681fd4c 67.78MB / 67.78MB 1.9s
#11 extracting sha256:53c88f1dfeb79b2f207f7f1a03a45e0dc5ed208b9f496de16b98f81189dc0392 1.9s done
#11 sha256:640989307fdd100137c7737c7f5e3a500b556c52e0270eb54eee3cd2862a1e73 102.11MB / 102.11MB 1.7s done
#11 sha256:7c9d4a4eea0de466b378fec1876ea74acd9465fc6a1d15368a117eeacaa21b7d 58.72MB / 60.15MB 1.9s
#11 sha256:65722e576e26f93f6cfbc2982f965aea739a47d43bea194a2dd0f4b344e01d82 126B / 126B 1.8s done
#11 sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1 32B / 32B 1.8s done
#11 extracting sha256:eae668646f447b181fe300ae6756351b6167aa2578be449b167ba79ed4926798 0.7s done
#11 extracting sha256:ff2e6e687b6ce78177a4cac678dd533c8e72b97469f030783b6bb491f681fd4c 2.5s done
#11 extracting sha256:640989307fdd100137c7737c7f5e3a500b556c52e0270eb54eee3cd2862a1e73 0.8s
#11 extracting sha256:640989307fdd100137c7737c7f5e3a500b556c52e0270eb54eee3cd2862a1e73 2.3s done
#11 extracting sha256:7c9d4a4eea0de466b378fec1876ea74acd9465fc6a1d15368a117eeacaa21b7d
#11 extracting sha256:7c9d4a4eea0de466b378fec1876ea74acd9465fc6a1d15368a117eeacaa21b7d 4.1s done
#11 extracting sha256:65722e576e26f93f6cfbc2982f965aea739a47d43bea194a2dd0f4b344e01d82
#11 extracting sha256:65722e576e26f93f6cfbc2982f965aea739a47d43bea194a2dd0f4b344e01d82 done
#11 extracting sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1 done
#11 DONE 14.3s

#12 [stage-0 2/3] COPY . /go/src/github.com/mikea/gdrive-webdav/
#12 DONE 0.0s

#13 [stage-0 3/3] RUN cd /go/src/github.com/mikea/gdrive-webdav/ && go install .
#13 0.140 go: downloading github.com/sirupsen/logrus v1.9.3
#13 0.140 go: downloading golang.org/x/net v0.46.0
#13 0.168 go: downloading github.com/pmylund/go-cache v2.1.0+incompatible
#13 0.196 go: downloading golang.org/x/oauth2 v0.33.0
#13 0.198 go: downloading google.golang.org/api v0.254.0
#13 0.344 go: downloading golang.org/x/sys v0.37.0
#13 3.676 go: downloading cloud.google.com/go/auth v0.17.0
#13 3.676 go: downloading github.com/googleapis/gax-go/v2 v2.15.0
#13 3.694 go: downloading cloud.google.com/go/auth/oauth2adapt v0.2.8
#13 3.747 go: downloading cloud.google.com/go/compute/metadata v0.9.0
#13 3.761 go: downloading github.com/google/s2a-go v0.1.9
#13 3.767 go: downloading google.golang.org/grpc v1.76.0
#13 3.771 go: downloading github.com/google/uuid v1.6.0
#13 3.791 go: downloading go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.62.0
#13 3.839 go: downloading github.com/googleapis/enterprise-certificate-proxy v0.3.6
#13 4.084 go: downloading google.golang.org/protobuf v1.36.10
#13 4.085 go: downloading google.golang.org/genproto/googleapis/rpc v0.0.0-20251022142026-3a174f9686a8
#13 4.099 go: downloading github.com/felixge/httpsnoop v1.0.4
#13 4.108 go: downloading go.opentelemetry.io/otel v1.37.0
#13 4.339 go: downloading go.opentelemetry.io/otel/metric v1.37.0
#13 4.352 go: downloading go.opentelemetry.io/otel/trace v1.37.0
#13 4.366 go: downloading github.com/go-logr/logr v1.4.3
#13 4.367 go: downloading golang.org/x/text v0.30.0
#13 4.393 go: downloading github.com/go-logr/stdr v1.2.2
#13 4.402 go: downloading go.opentelemetry.io/auto/sdk v1.1.0
#13 4.419 go: downloading golang.org/x/crypto v0.43.0
#13 DONE 25.6s

#14 [stage-1 4/6] COPY --from=0 /go/bin/gdrive-webdav .
#14 DONE 0.0s

#15 [stage-1 5/6] COPY entrypoint.sh .
#15 DONE 0.0s

#16 [stage-1 6/6] RUN chmod +x entrypoint.sh
#16 DONE 0.1s

#17 exporting to image
#17 exporting layers
#17 exporting layers 0.3s done
#17 writing image sha256:ed222b811a2d7c737d436f870b33e4c44e1eae1ecf43d2bd3ceedc2433fbf490 done
#17 naming to ghcr.io/xcq0607/gwebdav:latest done
#17 DONE 0.3s
```

