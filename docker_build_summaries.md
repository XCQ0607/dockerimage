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

40 directories, 54 files
```

## 镜像: lxmusic

### 构建信息
- 目录: lxmusic/
- 完整镜像名: ghcr.io/xcq0607/lxmusic:latest
- 构建状态: ✅ 成功
- 构建耗时: 96s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/lxmusic:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-lxmusic ghcr.io/xcq0607/lxmusic:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/lxmusic:latest
```

### 构建日志

```
#16 0.694 npm WARN EBADENGINE   package: '@typescript-eslint/utils@6.4.1',
#16 0.694 npm WARN EBADENGINE   required: { node: '^16.0.0 || >=18.0.0' },
#16 0.694 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.694 npm WARN EBADENGINE }
#16 0.694 npm WARN EBADENGINE Unsupported engine {
#16 0.694 npm WARN EBADENGINE   package: '@typescript-eslint/visitor-keys@6.4.1',
#16 0.695 npm WARN EBADENGINE   required: { node: '^16.0.0 || >=18.0.0' },
#16 0.695 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.695 npm WARN EBADENGINE }
#16 0.695 npm WARN EBADENGINE Unsupported engine {
#16 0.695 npm WARN EBADENGINE   package: 'changelog-parser@3.0.1',
#16 0.695 npm WARN EBADENGINE   required: { node: '>=14' },
#16 0.695 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.696 npm WARN EBADENGINE }
#16 0.696 npm WARN EBADENGINE Unsupported engine {
#16 0.696 npm WARN EBADENGINE   package: 'eslint-plugin-es-x@7.2.0',
#16 0.696 npm WARN EBADENGINE   required: { node: '^14.18.0 || >=16.0.0' },
#16 0.696 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.697 npm WARN EBADENGINE }
#16 0.697 npm WARN EBADENGINE Unsupported engine {
#16 0.697 npm WARN EBADENGINE   package: 'eslint-plugin-n@16.0.2',
#16 0.697 npm WARN EBADENGINE   required: { node: '>=16.0.0' },
#16 0.697 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.697 npm WARN EBADENGINE }
#16 0.698 npm WARN EBADENGINE Unsupported engine {
#16 0.698 npm WARN EBADENGINE   package: 'foreground-child@3.1.1',
#16 0.698 npm WARN EBADENGINE   required: { node: '>=14' },
#16 0.698 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.698 npm WARN EBADENGINE }
#16 0.699 npm WARN EBADENGINE Unsupported engine {
#16 0.699 npm WARN EBADENGINE   package: 'glob@10.3.10',
#16 0.699 npm WARN EBADENGINE   required: { node: '>=16 || 14 >=14.17' },
#16 0.699 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.699 npm WARN EBADENGINE }
#16 0.699 npm WARN EBADENGINE Unsupported engine {
#16 0.699 npm WARN EBADENGINE   package: 'minimatch@9.0.3',
#16 0.699 npm WARN EBADENGINE   required: { node: '>=16 || 14 >=14.17' },
#16 0.699 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.699 npm WARN EBADENGINE }
#16 0.700 npm WARN EBADENGINE Unsupported engine {
#16 0.700 npm WARN EBADENGINE   package: 'jackspeak@2.3.6',
#16 0.700 npm WARN EBADENGINE   required: { node: '>=14' },
#16 0.700 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.700 npm WARN EBADENGINE }
#16 0.701 npm WARN EBADENGINE Unsupported engine {
#16 0.701 npm WARN EBADENGINE   package: 'lru-cache@10.0.1',
#16 0.701 npm WARN EBADENGINE   required: { node: '14 || >=16.14' },
#16 0.701 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.701 npm WARN EBADENGINE }
#16 0.702 npm WARN EBADENGINE Unsupported engine {
#16 0.702 npm WARN EBADENGINE   package: 'minipass@7.0.4',
#16 0.702 npm WARN EBADENGINE   required: { node: '>=16 || 14 >=14.17' },
#16 0.702 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.702 npm WARN EBADENGINE }
#16 0.702 npm WARN EBADENGINE Unsupported engine {
#16 0.702 npm WARN EBADENGINE   package: 'path-scurry@1.10.1',
#16 0.702 npm WARN EBADENGINE   required: { node: '>=16 || 14 >=14.17' },
#16 0.702 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.703 npm WARN EBADENGINE }
#16 0.703 npm WARN EBADENGINE Unsupported engine {
#16 0.703 npm WARN EBADENGINE   package: 'rimraf@5.0.5',
#16 0.703 npm WARN EBADENGINE   required: { node: '>=14' },
#16 0.703 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.703 npm WARN EBADENGINE }
#16 0.704 npm WARN EBADENGINE Unsupported engine {
#16 0.704 npm WARN EBADENGINE   package: 'signal-exit@4.1.0',
#16 0.704 npm WARN EBADENGINE   required: { node: '>=14' },
#16 0.704 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.704 npm WARN EBADENGINE }
#16 0.704 npm WARN EBADENGINE Unsupported engine {
#16 0.704 npm WARN EBADENGINE   package: 'ts-api-utils@1.0.2',
#16 0.704 npm WARN EBADENGINE   required: { node: '>=16.13.0' },
#16 0.704 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.704 npm WARN EBADENGINE }
#16 0.705 npm WARN EBADENGINE Unsupported engine {
#16 0.705 npm WARN EBADENGINE   package: 'typescript@5.2.2',
#16 0.705 npm WARN EBADENGINE   required: { node: '>=14.17' },
#16 0.705 npm WARN EBADENGINE   current: { node: 'v12.22.9', npm: '8.5.1' }
#16 0.705 npm WARN EBADENGINE }
#16 4.231 
#16 4.231 added 17 packages, and audited 18 packages in 4s
#16 4.235 
#16 4.235 1 high severity vulnerability
#16 4.235 
#16 4.235 To address all issues, run:
#16 4.235   npm audit fix
#16 4.235 
#16 4.235 Run `npm audit` for details.
#16 DONE 4.3s

#17 exporting to image
#17 exporting layers
#17 exporting layers 3.1s done
#17 writing image sha256:195f2e1e2ecc0ba767392afd086b9295bfcad854a4d2bc98820544ab0cfd0db7 done
#17 naming to ghcr.io/xcq0607/lxmusic:latest done
#17 DONE 3.1s

 [33m2 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_ACCESS_KEY_ID") (line 57)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "R2_SECRET_ACCESS_KEY") (line 57)
```

