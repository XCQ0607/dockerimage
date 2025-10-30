# Docker Build Summaries

## 镜像: fiora

### 构建信息
- 目录: fiora/
- 完整镜像名: ghcr.io/xcq0607/fiora:latest
- 构建状态: ✅ 成功
- 构建耗时: 620s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/fiora:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-fiora ghcr.io/xcq0607/fiora:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/fiora:latest
```

### 构建日志

```
#19 18.39 lerna info Installing external dependencies
#19 90.55 lerna info Symlinking packages and binaries
#19 90.58 lerna success Bootstrapped 10 packages
#19 90.69 yarn link v1.22.22
#19 90.73 success Registered "fiora".
#19 90.73 info You can now run `yarn link "fiora"` in the projects where you want to use this package and it will be used instead.
#19 90.73 Done in 0.05s.
#19 90.74 Done in 90.43s.
#19 DONE 91.7s

#20 [15/18] RUN yarn build:web
#20 0.308 yarn run v1.22.22
#20 0.347 $ npx lerna run build:web --stream
#20 0.607 lerna notice cli v4.0.0
#20 0.608 lerna info versioning independent
#20 0.653 lerna info Executing command in 1 package: "yarn run build:web"
#20 0.778 @fiora/web: warning package.json: "dependencies" has dependency "@testing-library/jest-dom" with range "^5.14.1" that collides with a dependency in "devDependencies" of the same name with version "^4.2.4"
#20 0.812 @fiora/web: $ rm -rf dist && cross-env NODE_ENV=production DOTENV_CONFIG_PATH=../../.env webpack --config build/webpack.prod.js && cp -r -f dist/fiora/* ../server/public
#20 2.084 @fiora/web: ℹ Compiling Webpack
#20 2.645 @fiora/web: Browserslist: caniuse-lite is outdated. Please run:
#20 2.645 @fiora/web: npx browserslist@latest --update-db
#20 2.645 @fiora/web: Why you should do it regularly:
#20 2.645 @fiora/web: https://github.com/browserslist/browserslist#browsers-data-updating
#20 24.91 @fiora/web: ✔ Webpack: Compiled successfully in 22.83s
#20 25.08 @fiora/web: assets by chunk 1.67 MiB (auxiliary name: app)
#20 25.09 @fiora/web:   assets by path images/ 1.54 MiB
#20 25.09 @fiora/web:     assets by path images/*.jpeg 186 KiB 27 assets
#20 25.09 @fiora/web:     assets by path images/*.gif 802 KiB 7 assets
#20 25.09 @fiora/web:     assets by path images/*.jpg 496 KiB 6 assets
#20 25.09 @fiora/web:     assets by path images/*.png 89.3 KiB 4 assets
#20 25.09 @fiora/web:   assets by info 141 KiB [immutable] 7 assets
#20 25.09 @fiora/web: assets by path js/*.js 3.76 MiB
#20 25.09 @fiora/web:   assets by chunk 2.35 MiB (id hint: vendors) 18 assets
#20 25.09 @fiora/web:   12 assets
#20 25.09 @fiora/web: assets by path *.js 19.4 KiB
#20 25.09 @fiora/web:   asset workbox-15dd0bab.js 13.6 KiB [emitted] [minimized]
#20 25.09 @fiora/web:   asset service-worker.js 5.73 KiB [emitted] [minimized]
#20 25.09 @fiora/web: asset index.html 1.32 KiB [emitted]
#20 25.09 @fiora/web: orphan modules 1.13 MiB [orphan] 516 modules
#20 25.09 @fiora/web: runtime modules 8.44 KiB 13 modules
#20 25.09 @fiora/web: modules by path ./node_modules/ 6.27 MiB 828 modules
#20 25.09 @fiora/web: modules by path ../ 68.1 KiB
#20 25.09 @fiora/web:   modules by path ../assets/ 3.08 KiB 51 modules
#20 25.09 @fiora/web:   modules by path ../utils/ 63.9 KiB 17 modules
#20 25.09 @fiora/web:   ../config/client.ts 1.12 KiB [built] [code generated]
#20 25.09 @fiora/web: modules by path ./src/ 764 KiB 59 modules
#20 25.09 @fiora/web: modules by path ./.linaria-cache/packages/web/src/ 6.83 KiB
#20 25.09 @fiora/web:   modules by path ./.linaria-cache/packages/web/src/modules/ 5.04 KiB 10 modules
#20 25.09 @fiora/web:   modules by path ./.linaria-cache/packages/web/src/*.css 764 bytes 2 modules
#20 25.09 @fiora/web:   modules by path ./.linaria-cache/packages/web/src/components/*.css 1.04 KiB
#20 25.09 @fiora/web:     ./.linaria-cache/packages/web/src/components/Button.linaria.css 359 bytes [built] [code generated]
#20 25.09 @fiora/web:     ./node_modules/css-loader/dist/cjs.js!./.linaria-cache/packages/web/src/components/Button.linaria.css 706 bytes [built] [code generated]
#20 25.09 @fiora/web: LOG from GenerateSW
#20 25.09 @fiora/web: <i> The service worker at service-worker.js will precache
#20 25.09 @fiora/web: <i>         82 URLs, totaling 5.69 MB.
#20 25.09 @fiora/web: WARNING in asset size limit: The following asset(s) exceed the recommended size limit (244 KiB).
#20 25.09 @fiora/web: This can impact web performance.
#20 25.09 @fiora/web: Assets: 
#20 25.09 @fiora/web:   images/background.jpg (274 KiB)
#20 25.09 @fiora/web:   images/wuzeiniang.gif (488 KiB)
#20 25.09 @fiora/web:   js/app.aadfd574.js (1.33 MiB)
#20 25.09 @fiora/web:   js/react-ace-mode-php.1c409caa.js (461 KiB)
#20 25.09 @fiora/web:   js/832.98347f35.js (253 KiB)
#20 25.09 @fiora/web:   js/762.d5cafeb3.js (593 KiB)
#20 25.09 @fiora/web: WARNING in entrypoint size limit: The following entrypoint(s) combined asset size exceeds the recommended limit (244 KiB). This can impact web performance.
#20 25.09 @fiora/web: Entrypoints:
#20 25.09 @fiora/web:   app (1.33 MiB)
#20 25.09 @fiora/web:       js/app.aadfd574.js
#20 25.09 @fiora/web: webpack 5.45.1 compiled with 2 warnings in 22830 ms
#20 25.17 lerna success run Ran npm script 'build:web' in 1 package in 24.5s:
#20 25.17 lerna success - @fiora/web
#20 25.17 Done in 24.87s.
#20 DONE 25.2s

#21 [16/18] RUN npm install -g pm2
#21 5.583 /usr/bin/pm2 -> /usr/lib/node_modules/pm2/bin/pm2
#21 5.584 /usr/bin/pm2-docker -> /usr/lib/node_modules/pm2/bin/pm2-docker
#21 5.584 /usr/bin/pm2-runtime -> /usr/lib/node_modules/pm2/bin/pm2-runtime
#21 5.584 /usr/bin/pm2-dev -> /usr/lib/node_modules/pm2/bin/pm2-dev
#21 5.614 npm WARN notsup Unsupported engine for pm2@6.0.13: wanted: {"node":">=16.0.0"} (current: {"node":"14.21.3","npm":"6.14.18"})
#21 5.614 npm WARN notsup Not compatible with your version of node/npm: pm2@6.0.13
#21 5.621 npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@~2.3.2 (node_modules/pm2/node_modules/chokidar/node_modules/fsevents):
#21 5.621 npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@2.3.3: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})
#21 5.621 
#21 5.622 + pm2@6.0.13
#21 5.622 added 133 packages from 168 contributors in 5.177s
#21 DONE 5.7s

#22 [17/18] RUN mkdir -p /data/db /var/log/supervisor /app /fiora &&     chmod -R 777 /data /var/log/supervisor /app /fiora
#22 DONE 108.5s

#23 [18/18] COPY supervisord.conf /etc/supervisor/supervisord.conf
#23 DONE 0.0s

#24 exporting to image
#24 exporting layers
#24 exporting layers 48.0s done
#24 writing image sha256:f4e7baecc8a27ab346c5db1b09091d6b64e713ed309e9b89589a2699bbb05778 done
#24 naming to ghcr.io/xcq0607/fiora:latest done
#24 DONE 48.0s
```

## 镜像: rustdesk

### 构建信息
- 目录: rustdesk/
- 完整镜像名: ghcr.io/xcq0607/rustdesk:latest
- 构建状态: ✅ 成功
- 构建耗时: 45s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/rustdesk:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-rustdesk ghcr.io/xcq0607/rustdesk:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/rustdesk:latest
```

### 构建日志

```
#10 14.76 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.76 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 14.77 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 14.77 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.77 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.77 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.77 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.77 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.77 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.77 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.77 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 14.77 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 15.30 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 15.37 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 15.41 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 15.41 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 15.42 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 15.42 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 15.42 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 15.42 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 15.42 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 15.43 Setting up python3 (3.10.6-1~22.04.1) ...
#10 15.50 Setting up binutils (2.38-4ubuntu2.10) ...
#10 15.51 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 15.51 Setting up libexpat1-dev:amd64 (2.4.7-1ubuntu0.6) ...
#10 15.52 Setting up libdpkg-perl (1.21.1ubuntu2.6) ...
#10 15.52 Setting up libstdc++-11-dev:amd64 (11.4.0-1ubuntu1~22.04.2) ...
#10 15.52 Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu9.2) ...
#10 15.52 Setting up gcc-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 15.53 Setting up python3-lib2to3 (3.10.8-1~22.04) ...
#10 15.61 Setting up libmysqlclient-dev (8.0.43-0ubuntu0.22.04.2) ...
#10 15.61 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 15.75 Setting up default-libmysqlclient-dev:amd64 (1.0.8) ...
#10 15.76 Setting up python3-distutils (3.10.8-1~22.04) ...
#10 15.85 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 15.85 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 16.13 invoke-rc.d: could not determine current runlevel
#10 16.14 invoke-rc.d: policy-rc.d denied execution of start.
#10 16.23 Setting up python3-setuptools (59.6.0-1.2ubuntu0.22.04.3) ...
#10 16.50 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 16.59 
#10 16.59 Creating config file /etc/ssh/sshd_config with new version
#10 16.62 Creating SSH2 RSA key; this may take some time ...
#10 17.24 3072 SHA256:TyVlUGhtwU0IR4fRUSpgI55Rn1asdu12829OMwkAw3g root@buildkitsandbox (RSA)
#10 17.24 Creating SSH2 ECDSA key; this may take some time ...
#10 17.25 256 SHA256:/hIsbkr+t8OCF2fS/yY9EKcx0kasX6DU3b0NuTMx2XQ root@buildkitsandbox (ECDSA)
#10 17.25 Creating SSH2 ED25519 key; this may take some time ...
#10 17.25 256 SHA256:e6FXFTIFeGW0hLtFmUbpnyODWJcInubEv8COYu2NqtI root@buildkitsandbox (ED25519)
#10 17.31 invoke-rc.d: could not determine current runlevel
#10 17.31 invoke-rc.d: policy-rc.d denied execution of start.
#10 17.49 Setting up g++-11 (11.4.0-1ubuntu1~22.04.2) ...
#10 17.49 Setting up python3-wheel (0.37.1-2ubuntu0.22.04.1) ...
#10 17.60 Setting up gcc (4:11.2.0-1ubuntu1) ...
#10 17.61 Setting up dpkg-dev (1.21.1ubuntu2.6) ...
#10 17.61 Setting up liberror-perl (0.17029-1) ...
#10 17.61 Setting up pkg-config (0.29.2-1ubuntu3) ...
#10 17.63 Setting up libpython3.10-dev:amd64 (3.10.12-1~22.04.11) ...
#10 17.63 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 17.65 Setting up python3-pip (22.0.2+dfsg-1ubuntu0.7) ...
#10 18.52 Setting up python3.10-dev (3.10.12-1~22.04.11) ...
#10 18.52 Setting up g++ (4:11.2.0-1ubuntu1) ...
#10 18.54 update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
#10 18.54 update-alternatives: warning: skip creation of /usr/share/man/man1/c++.1.gz because associated file /usr/share/man/man1/g++.1.gz (of link group c++) doesn't exist
#10 18.54 Setting up build-essential (12.9ubuntu3) ...
#10 18.54 Setting up libpython3-dev:amd64 (3.10.6-1~22.04.1) ...
#10 18.55 Setting up python3-dev (3.10.6-1~22.04.1) ...
#10 18.55 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 18.57 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 18.57 Updating certificates in /etc/ssl/certs...
#10 18.99 0 added, 0 removed; done.
#10 18.99 Running hooks in /etc/ca-certificates/update.d...
#10 18.99 done.
#10 DONE 19.7s

#12 [stage-1 5/9] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.1s

#13 [stage-1 6/9] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.0s

#14 [stage-1 7/9] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.0s

#15 [stage-1 8/9] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 DONE 0.1s

#16 [stage-1 9/9] RUN chmod +x /app/rustdesk-api/*.sh && chmod +x /app/rustdesk-server/*.sh
#16 DONE 0.1s

#17 exporting to image
#17 exporting layers
#17 exporting layers 3.1s done
#17 writing image sha256:31bccbe464f866558d3ca2e35b4e7bace32e3e148bc59ea9b11033d7c84bd728 done
#17 naming to ghcr.io/xcq0607/rustdesk:latest done
#17 DONE 3.1s

 [33m3 warnings found (use docker --debug to expand):
[0m - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "SECRET_KEY") (line 26)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "MYSQL_PASSWORD") (line 26)
 - SecretsUsedInArgOrEnv: Do not use ARG or ENV instructions for sensitive data (ENV "RUSTDESK_KEY") (line 26)
```

## 镜像: xray

### 构建信息
- 目录: xray/
- 完整镜像名: ghcr.io/xcq0607/xray:latest
- 构建状态: ✅ 成功
- 构建耗时: 26s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/xray:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-xray ghcr.io/xcq0607/xray:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/xray:latest
```

### 构建日志

```
#9 10.50 Setting up libcurl4:amd64 (7.81.0-1ubuntu1.21) ...
#9 10.51 Setting up curl (7.81.0-1ubuntu1.21) ...
#9 10.51 Setting up libbpf0:amd64 (1:0.5.0-1ubuntu22.04.1) ...
#9 10.52 Setting up libpython3-stdlib:amd64 (3.10.6-1~22.04.1) ...
#9 10.54 Setting up libpython3.10:amd64 (3.10.12-1~22.04.11) ...
#9 10.59 Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.5) ...
#9 10.59 Setting up vim (2:8.2.3995-1ubuntu2.24) ...
#9 10.60 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
#9 10.60 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
#9 10.64 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
#9 10.64 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
#9 10.64 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
#9 10.64 update-alternatives: warning: skip creation of /usr/share/man/da/man1/vi.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.64 update-alternatives: warning: skip creation of /usr/share/man/de/man1/vi.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.64 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.64 update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.64 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/vi.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.64 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/vi.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.64 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/vi.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.64 update-alternatives: warning: skip creation of /usr/share/man/man1/vi.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group vi) doesn't exist
#9 10.64 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/da/man1/view.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group view) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/de/man1/view.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group view) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
#9 10.65 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#9 10.65 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.65 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#9 10.69 Setting up python3.10 (3.10.12-1~22.04.11) ...
#9 11.23 Setting up iproute2 (5.15.0-1ubuntu2) ...
#9 11.30 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#9 11.34 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#9 11.34 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#9 11.34 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#9 11.34 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#9 11.35 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#9 11.35 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#9 11.35 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#9 11.35 Setting up python3 (3.10.6-1~22.04.1) ...
#9 11.43 Setting up perl (5.34.0-3ubuntu1.5) ...
#9 11.44 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#9 11.58 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#9 11.58 Setting up supervisor (4.2.1-1ubuntu1) ...
#9 11.86 invoke-rc.d: could not determine current runlevel
#9 11.86 invoke-rc.d: policy-rc.d denied execution of start.
#9 11.97 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#9 12.06 
#9 12.06 Creating config file /etc/ssh/sshd_config with new version
#9 12.09 Creating SSH2 RSA key; this may take some time ...
#9 12.42 3072 SHA256:GE1WDxbnpHfqlbS0HPFsbXx6KveOq8gmWzQ0QEiO+Dk root@buildkitsandbox (RSA)
#9 12.42 Creating SSH2 ECDSA key; this may take some time ...
#9 12.42 256 SHA256:lAA+zRTZvUd9BF1wlDkT1z+Rf/Swzbc1wmofzmhRYAM root@buildkitsandbox (ECDSA)
#9 12.43 Creating SSH2 ED25519 key; this may take some time ...
#9 12.43 256 SHA256:QDqpVaQsQVEvGUvhFSDQNinHIE8Ur9oZRwDO2+9mYiI root@buildkitsandbox (ED25519)
#9 12.49 invoke-rc.d: could not determine current runlevel
#9 12.49 invoke-rc.d: policy-rc.d denied execution of start.
#9 12.67 Setting up liberror-perl (0.17029-1) ...
#9 12.67 Setting up git (1:2.34.1-1ubuntu1.15) ...
#9 12.68 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#9 12.69 Processing triggers for ca-certificates (20240203~22.04.1) ...
#9 12.69 Updating certificates in /etc/ssl/certs...
#9 13.11 0 added, 0 removed; done.
#9 13.11 Running hooks in /etc/ca-certificates/update.d...
#9 13.11 done.
#9 DONE 13.2s

#11 [stage-1 5/7] COPY --from=builder /app/xy /usr/local/bin/xy
#11 DONE 0.1s

#12 [stage-1 6/7] COPY --from=builder /app/td /usr/local/bin/td
#12 DONE 0.0s

#13 [stage-1 7/7] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#13 DONE 0.0s

#14 exporting to image
#14 exporting layers
#14 exporting layers 1.5s done
#14 writing image sha256:23eb24d862193f254b016fb5c494877784a70495d3decfc99c20f746ddf0b0bd done
#14 naming to ghcr.io/xcq0607/xray:latest done
#14 DONE 1.5s
```

## 镜像: xrayargo

### 构建信息
- 目录: xrayargo/
- 完整镜像名: ghcr.io/xcq0607/xrayargo:latest
- 构建状态: ✅ 成功
- 构建耗时: 26s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/xrayargo:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-xrayargo ghcr.io/xcq0607/xrayargo:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/xrayargo:latest
```

### 构建日志

```
#10 10.07 Setting up libpython3-stdlib:amd64 (3.10.6-1~22.04.1) ...
#10 10.08 Setting up libpython3.10:amd64 (3.10.12-1~22.04.11) ...
#10 10.08 Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.5) ...
#10 10.08 Setting up vim (2:8.2.3995-1ubuntu2.24) ...
#10 10.09 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
#10 10.09 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
#10 10.09 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
#10 10.09 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
#10 10.09 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/da/man1/vi.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group vi) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/de/man1/vi.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group vi) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/vi.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group vi) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/vi.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group vi) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/vi.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group vi) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/man1/vi.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group vi) doesn't exist
#10 10.09 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/da/man1/view.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group view) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/de/man1/view.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group view) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
#10 10.09 update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
#10 10.10 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 10.10 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 10.10 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 10.10 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 10.62 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 10.69 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 10.73 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 10.73 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 10.73 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 10.73 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 10.74 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 10.74 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 10.74 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 10.74 Setting up python3 (3.10.6-1~22.04.1) ...
#10 10.82 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 10.83 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 10.97 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 10.98 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 11.25 invoke-rc.d: could not determine current runlevel
#10 11.26 invoke-rc.d: policy-rc.d denied execution of start.
#10 11.36 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 11.45 
#10 11.45 Creating config file /etc/ssh/sshd_config with new version
#10 11.47 Creating SSH2 RSA key; this may take some time ...
#10 12.42 3072 SHA256:UqObiB455W+TCZXAe4MW7lPHAPjgpEYcxHVd3aF4J98 root@buildkitsandbox (RSA)
#10 12.43 Creating SSH2 ECDSA key; this may take some time ...
#10 12.43 256 SHA256:9uvqJHKwFMFrIAsf/0SywNEXYGz+sLODV7p6qE+qF88 root@buildkitsandbox (ECDSA)
#10 12.43 Creating SSH2 ED25519 key; this may take some time ...
#10 12.44 256 SHA256:zExxk96mr8fC5KyjjFeEM2sQBZ1l1h+GAleV0lI1d3o root@buildkitsandbox (ED25519)
#10 12.50 invoke-rc.d: could not determine current runlevel
#10 12.50 invoke-rc.d: policy-rc.d denied execution of start.
#10 12.67 Setting up liberror-perl (0.17029-1) ...
#10 12.68 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 12.68 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 12.69 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 12.70 Updating certificates in /etc/ssl/certs...
#10 13.11 0 added, 0 removed; done.
#10 13.11 Running hooks in /etc/ca-certificates/update.d...
#10 13.11 done.
#10 DONE 13.4s

#11 [stage-1 5/8] COPY --from=builder /app/xy /usr/local/bin/xy
#11 DONE 0.1s

#12 [stage-1 6/8] COPY --from=builder /app/td /usr/local/bin/td
#12 DONE 0.0s

#13 [stage-1 7/8] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#13 DONE 0.0s

#14 [stage-1 8/8] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#14 DONE 0.1s

#15 exporting to image
#15 exporting layers
#15 exporting layers 1.6s done
#15 writing image sha256:be838f43e05b9324b4398fdf47256f49059ce6a539ede2b1fae334b26da9a785 done
#15 naming to ghcr.io/xcq0607/xrayargo:latest done
#15 DONE 1.6s
```

## 镜像: xrayfiora

### 构建信息
- 目录: xrayfiora/
- 完整镜像名: ghcr.io/xcq0607/xrayfiora:latest
- 构建状态: ✅ 成功
- 构建耗时: 183s

### 使用方法

#### 在 Dockerfile 中使用:

```Dockerfile
FROM ghcr.io/xcq0607/xrayfiora:latest
```

#### 使用 docker run 命令运行:

```bash
docker run -d --name my-xrayfiora ghcr.io/xcq0607/xrayfiora:latest
```

#### 拉取镜像到本地:

```bash
docker pull ghcr.io/xcq0607/xrayfiora:latest
```

### 构建日志

```
#6 121.4 The following NEW packages will be installed:
#6 121.4   libatomic1 libjemalloc2 liblua5.1-0 liblzf1 lua-bitop lua-cjson redis-server
#6 121.4   redis-tools
#6 121.6 0 upgraded, 8 newly installed, 0 to remove and 1 not upgraded.
#6 121.6 Need to get 1283 kB of archives.
#6 121.6 After this operation, 5771 kB of additional disk space will be used.
#6 121.6 Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libatomic1 amd64 12.3.0-1ubuntu1~22.04.2 [10.4 kB]
#6 121.7 Get:2 http://archive.ubuntu.com/ubuntu jammy/universe amd64 libjemalloc2 amd64 5.2.1-4ubuntu1 [240 kB]
#6 122.1 Get:3 http://archive.ubuntu.com/ubuntu jammy/universe amd64 liblua5.1-0 amd64 5.1.5-8.1build4 [99.9 kB]
#6 122.1 Get:4 http://archive.ubuntu.com/ubuntu jammy/universe amd64 liblzf1 amd64 3.6-3 [7444 B]
#6 122.1 Get:5 http://archive.ubuntu.com/ubuntu jammy/universe amd64 lua-bitop amd64 1.0.2-5 [6680 B]
#6 122.1 Get:6 http://archive.ubuntu.com/ubuntu jammy/universe amd64 lua-cjson amd64 2.1.0+dfsg-2.1 [17.4 kB]
#6 122.1 Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 redis-tools amd64 5:6.0.16-1ubuntu1.1 [856 kB]
#6 122.3 Get:8 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 redis-server amd64 5:6.0.16-1ubuntu1.1 [45.9 kB]
#6 122.4 debconf: delaying package configuration, since apt-utils is not installed
#6 122.4 Fetched 1283 kB in 1s (1511 kB/s)
#6 122.4 Selecting previously unselected package libatomic1:amd64.
#6 122.4 (Reading database ... (Reading database ... 5%(Reading database ... 10%(Reading database ... 15%(Reading database ... 20%(Reading database ... 25%(Reading database ... 30%(Reading database ... 35%(Reading database ... 40%(Reading database ... 45%(Reading database ... 50%(Reading database ... 55%(Reading database ... 60%(Reading database ... 65%(Reading database ... 70%(Reading database ... 75%(Reading database ... 80%(Reading database ... 85%(Reading database ... 90%(Reading database ... 95%(Reading database ... 100%(Reading database ... 23095 files and directories currently installed.)
#6 122.4 Preparing to unpack .../0-libatomic1_12.3.0-1ubuntu1~22.04.2_amd64.deb ...
#6 122.4 Unpacking libatomic1:amd64 (12.3.0-1ubuntu1~22.04.2) ...
#6 122.4 Selecting previously unselected package libjemalloc2:amd64.
#6 122.4 Preparing to unpack .../1-libjemalloc2_5.2.1-4ubuntu1_amd64.deb ...
#6 122.4 Unpacking libjemalloc2:amd64 (5.2.1-4ubuntu1) ...
#6 122.4 Selecting previously unselected package liblua5.1-0:amd64.
#6 122.4 Preparing to unpack .../2-liblua5.1-0_5.1.5-8.1build4_amd64.deb ...
#6 122.4 Unpacking liblua5.1-0:amd64 (5.1.5-8.1build4) ...
#6 122.5 Selecting previously unselected package liblzf1:amd64.
#6 122.5 Preparing to unpack .../3-liblzf1_3.6-3_amd64.deb ...
#6 122.5 Unpacking liblzf1:amd64 (3.6-3) ...
#6 122.5 Selecting previously unselected package lua-bitop:amd64.
#6 122.5 Preparing to unpack .../4-lua-bitop_1.0.2-5_amd64.deb ...
#6 122.5 Unpacking lua-bitop:amd64 (1.0.2-5) ...
#6 122.5 Selecting previously unselected package lua-cjson:amd64.
#6 122.5 Preparing to unpack .../5-lua-cjson_2.1.0+dfsg-2.1_amd64.deb ...
#6 122.5 Unpacking lua-cjson:amd64 (2.1.0+dfsg-2.1) ...
#6 122.5 Selecting previously unselected package redis-tools.
#6 122.5 Preparing to unpack .../6-redis-tools_5%3a6.0.16-1ubuntu1.1_amd64.deb ...
#6 122.5 Unpacking redis-tools (5:6.0.16-1ubuntu1.1) ...
#6 122.6 Selecting previously unselected package redis-server.
#6 122.6 Preparing to unpack .../7-redis-server_5%3a6.0.16-1ubuntu1.1_amd64.deb ...
#6 122.6 Unpacking redis-server (5:6.0.16-1ubuntu1.1) ...
#6 122.6 Setting up libjemalloc2:amd64 (5.2.1-4ubuntu1) ...
#6 122.6 Setting up lua-cjson:amd64 (2.1.0+dfsg-2.1) ...
#6 122.6 Setting up liblzf1:amd64 (3.6-3) ...
#6 122.6 Setting up libatomic1:amd64 (12.3.0-1ubuntu1~22.04.2) ...
#6 122.6 Setting up lua-bitop:amd64 (1.0.2-5) ...
#6 122.6 Setting up liblua5.1-0:amd64 (5.1.5-8.1build4) ...
#6 122.6 Setting up redis-tools (5:6.0.16-1ubuntu1.1) ...
#6 122.7 Setting up redis-server (5:6.0.16-1ubuntu1.1) ...
#6 122.7 invoke-rc.d: could not determine current runlevel
#6 122.7 invoke-rc.d: policy-rc.d denied execution of start.
#6 122.8 Created symlink /etc/systemd/system/redis.service → /lib/systemd/system/redis-server.service.
#6 122.8 Created symlink /etc/systemd/system/multi-user.target.wants/redis-server.service → /lib/systemd/system/redis-server.service.
#6 122.8 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#6 123.4 
#6 123.4 > yarn@1.22.22 preinstall /usr/lib/node_modules/yarn
#6 123.4 > :; (node ./preinstall.js > /dev/null 2>&1 || true)
#6 123.4 
#6 123.7 /usr/bin/yarnpkg -> /usr/lib/node_modules/yarn/bin/yarn.js
#6 123.7 /usr/bin/yarn -> /usr/lib/node_modules/yarn/bin/yarn.js
#6 123.7 + yarn@1.22.22
#6 123.7 added 1 package in 0.526s
#6 DONE 125.4s

#9 [stage-1  3/12] COPY entrypoint.sh /entrypoint.sh
#9 DONE 0.0s

#10 [stage-1  4/12] COPY app /app
#10 DONE 0.0s

#11 [stage-1  5/12] RUN chmod +x /entrypoint.sh;     chmod -R 777 /app;     useradd -u 1000 -g 0 -m -s /bin/bash user;     ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;     echo Asia/Shanghai > /etc/timezone;     git config --global user.email "fiora@example.com";     git config --global user.name "Fiora Installer"
#11 DONE 0.1s

#12 [stage-1  6/12] RUN mkdir -p /data/db /data/redis;     chown -R 1000:0 /data/db /data/redis;     chmod -R 777 /data/db /data/redis
#12 DONE 0.1s

#13 [stage-1  7/12] RUN mkdir -p /app/fiora;     chown -R 1000:0 /app/fiora;     chmod -R 777 /app/fiora
#13 DONE 0.1s

#14 [stage-1  8/12] RUN chmod +x /app/start-fiora.sh;     chmod +x /app/test-services.sh
#14 DONE 0.1s

#15 [stage-1  9/12] COPY --from=builder /app/xy /usr/local/bin/xy
#15 DONE 0.1s

#16 [stage-1 10/12] COPY --from=builder /app/td /usr/local/bin/td
#16 DONE 0.0s

#17 [stage-1 11/12] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#17 DONE 0.0s

#18 [stage-1 12/12] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#18 DONE 0.1s

#19 exporting to image
#19 exporting layers
#19 exporting layers 5.9s done
#19 writing image sha256:5bcd5dd5a2dad0ecdc1d78f743aa7928d161dc3d844bf36df1910fc3a20ad3de done
#19 naming to ghcr.io/xcq0607/xrayfiora:latest done
#19 DONE 5.9s
```

