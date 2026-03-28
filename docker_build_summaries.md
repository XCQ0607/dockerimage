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
├── cli
│   ├── Dockerfile
│   └── build.flag
├── cliproxyapi
│   ├── Dockerfile
│   └── build.flag
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
│   ├── LICENSE
│   ├── README_CN.md
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
├── ohmycaptcha
│   ├── CONTRIBUTING.md
│   ├── DISCLAIMER.md
│   ├── DISCLAIMER.zh-CN.md
│   ├── Dockerfile
│   ├── LICENSE
│   ├── README.md
│   ├── README.zh-CN.md
│   ├── SECURITY.md
│   ├── docs
│   │   ├── acceptance.md
│   │   ├── api-reference.md
│   │   ├── assets
│   │   ├── deployment
│   │   ├── faq.md
│   │   ├── getting-started.md
│   │   ├── index.md
│   │   ├── positioning.md
│   │   ├── skill.md
│   │   ├── stylesheets
│   │   ├── usage
│   │   └── zh
│   ├── main.py
│   ├── mkdocs.yml
│   ├── pyrightconfig.json
│   ├── render.yaml
│   ├── requirements.txt
│   ├── skills
│   │   ├── README.md
│   │   ├── ohmycaptcha
│   │   └── ohmycaptcha-image
│   ├── src
│   │   ├── __init__.py
│   │   ├── api
│   │   ├── core
│   │   ├── main.py
│   │   ├── models
│   │   └── services
│   ├── tests
│   │   └── test_api.py
│   └── typings
│       ├── fastapi
│       └── uvicorn
├── ros2-dev
│   ├── Dockerfile
│   └── build.flag
├── ros2-ops
│   ├── Dockerfile
│   └── build.flag
├── ros2-ops-py
│   └── Dockerfile
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

84 directories, 132 files
```

## 镜像: ohmycaptcha

### 构建信息
- 目录: ohmycaptcha/
- 完整镜像名: ghcr.io/xcq0607/ohmycaptcha:latest
- 架构支持: linux/amd64, linux/arm64
- 构建状态: ❌ 失败
- 构建耗时: 23s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/ohmycaptcha:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-ohmycaptcha ghcr.io/xcq0607/ohmycaptcha:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/ohmycaptcha:latest
```

### 构建日志

```
#13 7.029    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 806.6/806.6 kB 222.0 MB/s eta 0:00:00
#13 7.036 Downloading pyyaml_env_tag-1.1-py3-none-any.whl (4.7 kB)
#13 7.043 Downloading requests-2.33.0-py3-none-any.whl (65 kB)
#13 7.045    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 65.0/65.0 kB 175.6 MB/s eta 0:00:00
#13 7.052 Downloading certifi-2026.2.25-py3-none-any.whl (153 kB)
#13 7.055    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 153.7/153.7 kB 283.6 MB/s eta 0:00:00
#13 7.067 Downloading starlette-0.48.0-py3-none-any.whl (73 kB)
#13 7.069    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 73.7/73.7 kB 233.6 MB/s eta 0:00:00
#13 7.076 Downloading tqdm-4.67.3-py3-none-any.whl (78 kB)
#13 7.078    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 78.4/78.4 kB 194.2 MB/s eta 0:00:00
#13 7.085 Downloading typing_extensions-4.15.0-py3-none-any.whl (44 kB)
#13 7.087    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 44.6/44.6 kB 145.9 MB/s eta 0:00:00
#13 7.096 Downloading uvloop-0.22.1-cp311-cp311-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl (3.8 MB)
#13 7.110    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 3.8/3.8 MB 305.1 MB/s eta 0:00:00
#13 7.117 Downloading watchdog-6.0.0-py3-none-manylinux2014_x86_64.whl (79 kB)
#13 7.120    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 79.1/79.1 kB 257.6 MB/s eta 0:00:00
#13 7.127 Downloading watchfiles-1.1.1-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (456 kB)
#13 7.131    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 456.1/456.1 kB 274.4 MB/s eta 0:00:00
#13 7.138 Downloading websockets-16.0-cp311-cp311-manylinux1_x86_64.manylinux_2_28_x86_64.manylinux_2_5_x86_64.whl (184 kB)
#13 7.142    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 184.6/184.6 kB 177.7 MB/s eta 0:00:00
#13 7.149 Downloading iniconfig-2.3.0-py3-none-any.whl (7.5 kB)
#13 7.156 Downloading sniffio-1.3.1-py3-none-any.whl (10 kB)
#13 7.164 Downloading charset_normalizer-3.4.6-cp311-cp311-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl (204 kB)
#13 7.166    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 204.7/204.7 kB 263.0 MB/s eta 0:00:00
#13 7.173 Downloading platformdirs-4.9.4-py3-none-any.whl (21 kB)
#13 7.180 Downloading python_dateutil-2.9.0.post0-py2.py3-none-any.whl (229 kB)
#13 7.183    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 229.9/229.9 kB 280.9 MB/s eta 0:00:00
#13 7.191 Downloading urllib3-2.6.3-py3-none-any.whl (131 kB)
#13 7.194    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 131.6/131.6 kB 291.7 MB/s eta 0:00:00
#13 7.201 Downloading six-1.17.0-py2.py3-none-any.whl (11 kB)
#13 7.792 Installing collected packages: paginate, websockets, watchdog, uvloop, urllib3, typing-extensions, tqdm, sniffio, six, pyyaml, python-dotenv, pygments, pluggy, platformdirs, Pillow, pathspec, packaging, mkdocs-material-extensions, mergedeep, markupsafe, markdown, jiter, iniconfig, idna, httptools, h11, greenlet, distro, colorama, click, charset_normalizer, certifi, backrefs, babel, annotated-types, uvicorn, requests, pyyaml-env-tag, python-dateutil, pytest, pymdown-extensions, pyee, pydantic-core, mkdocs-get-deps, jinja2, httpcore, anyio, watchfiles, starlette, pydantic, playwright, httpx, ghp-import, openai, mkdocs, fastapi, mkdocs-static-i18n, mkdocs-redirects, mkdocs-material
#13 ...

#14 [linux/arm64 4/6] RUN pip install --no-cache-dir --root-user-action=ignore -r requirements.txt
#14 ...

#13 [linux/amd64 4/6] RUN pip install --no-cache-dir --root-user-action=ignore -r requirements.txt
#13 15.42 Successfully installed Pillow-11.1.0 annotated-types-0.7.0 anyio-4.13.0 babel-2.18.0 backrefs-5.9 certifi-2026.2.25 charset_normalizer-3.4.6 click-8.3.1 colorama-0.4.6 distro-1.9.0 fastapi-0.119.0 ghp-import-2.1.0 greenlet-3.1.1 h11-0.16.0 httpcore-1.0.9 httptools-0.7.1 httpx-0.28.1 idna-3.11 iniconfig-2.3.0 jinja2-3.1.6 jiter-0.13.0 markdown-3.10.2 markupsafe-3.0.3 mergedeep-1.3.4 mkdocs-1.6.1 mkdocs-get-deps-0.2.2 mkdocs-material-9.6.7 mkdocs-material-extensions-1.3.1 mkdocs-redirects-1.2.2 mkdocs-static-i18n-1.3.0 openai-1.82.0 packaging-26.0 paginate-0.5.7 pathspec-1.0.4 platformdirs-4.9.4 playwright-1.49.1 pluggy-1.6.0 pydantic-2.10.4 pydantic-core-2.27.2 pyee-12.0.0 pygments-2.19.2 pymdown-extensions-10.14.3 pytest-8.3.5 python-dateutil-2.9.0.post0 python-dotenv-1.2.2 pyyaml-6.0.3 pyyaml-env-tag-1.1 requests-2.33.0 six-1.17.0 sniffio-1.3.1 starlette-0.48.0 tqdm-4.67.3 typing-extensions-4.15.0 urllib3-2.6.3 uvicorn-0.32.1 uvloop-0.22.1 watchdog-6.0.0 watchfiles-1.1.1 websockets-16.0
#13 15.51 
#13 15.51 [notice] A new release of pip is available: 24.0 -> 26.0.1
#13 15.51 [notice] To update, run: pip install --upgrade pip
#13 DONE 16.6s

#14 [linux/arm64 4/6] RUN pip install --no-cache-dir --root-user-action=ignore -r requirements.txt
#14 ...

#15 [linux/amd64 5/6] RUN playwright install --with-deps chromium
#15 0.472 BEWARE: your OS is not officially supported by Playwright; installing dependencies for ubuntu20.04-x64 as a fallback.
#15 0.472 Installing dependencies...
#15 0.536 Hit:1 http://deb.debian.org/debian trixie InRelease
#15 0.536 Get:2 http://deb.debian.org/debian trixie-updates InRelease [47.3 kB]
#15 0.544 Get:3 http://deb.debian.org/debian-security trixie-security InRelease [43.4 kB]
#15 0.557 Get:4 http://deb.debian.org/debian trixie/main amd64 Packages [9671 kB]
#15 0.639 Get:5 http://deb.debian.org/debian trixie-updates/main amd64 Packages [5412 B]
#15 0.640 Get:6 http://deb.debian.org/debian-security trixie-security/main amd64 Packages [114 kB]
#15 1.276 Fetched 9881 kB in 1s (12.8 MB/s)
#15 1.276 Reading package lists...
#15 1.761 Reading package lists...
#15 2.252 Building dependency tree...
#15 2.396 Reading state information...
#15 2.412 Package ttf-ubuntu-font-family is not available, but is referred to by another package.
#15 2.412 This may mean that the package is missing, has been obsoleted, or
#15 2.412 is only available from another source
#15 2.412 
#15 2.412 Package ttf-unifont is not available, but is referred to by another package.
#15 2.412 This may mean that the package is missing, has been obsoleted, or
#15 2.412 is only available from another source
#15 2.412 However the following packages replace it:
#15 2.412   fonts-unifont
#15 2.412 
#15 2.414 E: Package 'ttf-unifont' has no installation candidate
#15 2.414 E: Package 'ttf-ubuntu-font-family' has no installation candidate
#15 2.417 Failed to install browsers
#15 2.417 Error: Installation process exited with code: 100
#15 ERROR: process "/bin/sh -c playwright install --with-deps chromium" did not complete successfully: exit code: 1

#14 [linux/arm64 4/6] RUN pip install --no-cache-dir --root-user-action=ignore -r requirements.txt
#14 CANCELED
------
 > [linux/amd64 5/6] RUN playwright install --with-deps chromium:
2.412 Package ttf-unifont is not available, but is referred to by another package.
2.412 This may mean that the package is missing, has been obsoleted, or
2.412 is only available from another source
2.412 However the following packages replace it:
2.412   fonts-unifont
2.412 
2.414 E: Package 'ttf-unifont' has no installation candidate
2.414 E: Package 'ttf-ubuntu-font-family' has no installation candidate
2.417 Failed to install browsers
2.417 Error: Installation process exited with code: 100
------
Dockerfile:7
--------------------
   5 |     COPY requirements.txt .
   6 |     RUN pip install --no-cache-dir --root-user-action=ignore -r requirements.txt
   7 | >>> RUN playwright install --with-deps chromium
   8 |     
   9 |     COPY . .
--------------------
ERROR: failed to build: failed to solve: process "/bin/sh -c playwright install --with-deps chromium" did not complete successfully: exit code: 1
```

