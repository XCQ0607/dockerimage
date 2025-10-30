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

