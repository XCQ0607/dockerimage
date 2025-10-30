# Docker Build Summaries

## 镜像: xrayargo

### 构建信息
- 目录: xrayargo/
- 完整镜像名: ghcr.io/xcq0607/xrayargo:latest
- 构建状态: ✅ 成功
- 构建耗时: 43s

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
#10 22.67 Setting up libpython3-stdlib:amd64 (3.10.6-1~22.04.1) ...
#10 22.68 Setting up libpython3.10:amd64 (3.10.12-1~22.04.11) ...
#10 22.68 Setting up libperl5.34:amd64 (5.34.0-3ubuntu1.5) ...
#10 22.68 Setting up vim (2:8.2.3995-1ubuntu2.24) ...
#10 22.68 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
#10 22.68 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode
#10 22.69 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
#10 22.69 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
#10 22.69 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/da/man1/vi.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group vi) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/de/man1/vi.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group vi) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/vi.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group vi) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/it/man1/vi.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group vi) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/vi.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group vi) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/vi.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group vi) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/vi.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group vi) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/man1/vi.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group vi) doesn't exist
#10 22.69 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/da/man1/view.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group view) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/de/man1/view.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group view) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/view.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group view) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/it/man1/view.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group view) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/view.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group view) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/view.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group view) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/view.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group view) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/man1/view.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group view) doesn't exist
#10 22.69 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/da/man1/ex.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group ex) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/de/man1/ex.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group ex) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/ex.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group ex) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/it/man1/ex.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group ex) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/ex.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group ex) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/ex.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group ex) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/ex.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group ex) doesn't exist
#10 22.69 update-alternatives: warning: skip creation of /usr/share/man/man1/ex.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group ex) doesn't exist
#10 22.70 update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in auto mode
#10 22.70 update-alternatives: warning: skip creation of /usr/share/man/da/man1/editor.1.gz because associated file /usr/share/man/da/man1/vim.1.gz (of link group editor) doesn't exist
#10 22.70 update-alternatives: warning: skip creation of /usr/share/man/de/man1/editor.1.gz because associated file /usr/share/man/de/man1/vim.1.gz (of link group editor) doesn't exist
#10 22.70 update-alternatives: warning: skip creation of /usr/share/man/fr/man1/editor.1.gz because associated file /usr/share/man/fr/man1/vim.1.gz (of link group editor) doesn't exist
#10 22.70 update-alternatives: warning: skip creation of /usr/share/man/it/man1/editor.1.gz because associated file /usr/share/man/it/man1/vim.1.gz (of link group editor) doesn't exist
#10 22.70 update-alternatives: warning: skip creation of /usr/share/man/ja/man1/editor.1.gz because associated file /usr/share/man/ja/man1/vim.1.gz (of link group editor) doesn't exist
#10 22.70 update-alternatives: warning: skip creation of /usr/share/man/pl/man1/editor.1.gz because associated file /usr/share/man/pl/man1/vim.1.gz (of link group editor) doesn't exist
#10 22.70 update-alternatives: warning: skip creation of /usr/share/man/ru/man1/editor.1.gz because associated file /usr/share/man/ru/man1/vim.1.gz (of link group editor) doesn't exist
#10 22.70 update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/vim.1.gz (of link group editor) doesn't exist
#10 22.70 Setting up python3.10 (3.10.12-1~22.04.11) ...
#10 23.22 Setting up iproute2 (5.15.0-1ubuntu2) ...
#10 23.29 Setting up openssh-client (1:8.9p1-3ubuntu0.13) ...
#10 23.33 update-alternatives: using /usr/bin/ssh to provide /usr/bin/rsh (rsh) in auto mode
#10 23.33 update-alternatives: warning: skip creation of /usr/share/man/man1/rsh.1.gz because associated file /usr/share/man/man1/ssh.1.gz (of link group rsh) doesn't exist
#10 23.33 update-alternatives: using /usr/bin/slogin to provide /usr/bin/rlogin (rlogin) in auto mode
#10 23.33 update-alternatives: warning: skip creation of /usr/share/man/man1/rlogin.1.gz because associated file /usr/share/man/man1/slogin.1.gz (of link group rlogin) doesn't exist
#10 23.34 update-alternatives: using /usr/bin/scp to provide /usr/bin/rcp (rcp) in auto mode
#10 23.34 update-alternatives: warning: skip creation of /usr/share/man/man1/rcp.1.gz because associated file /usr/share/man/man1/scp.1.gz (of link group rcp) doesn't exist
#10 23.34 Setting up libcurl3-gnutls:amd64 (7.81.0-1ubuntu1.21) ...
#10 23.34 Setting up python3 (3.10.6-1~22.04.1) ...
#10 23.42 Setting up perl (5.34.0-3ubuntu1.5) ...
#10 23.43 Setting up python3-pkg-resources (59.6.0-1.2ubuntu0.22.04.3) ...
#10 23.57 Setting up openssh-sftp-server (1:8.9p1-3ubuntu0.13) ...
#10 23.57 Setting up supervisor (4.2.1-1ubuntu1) ...
#10 23.85 invoke-rc.d: could not determine current runlevel
#10 23.86 invoke-rc.d: policy-rc.d denied execution of start.
#10 23.96 Setting up openssh-server (1:8.9p1-3ubuntu0.13) ...
#10 24.05 
#10 24.05 Creating config file /etc/ssh/sshd_config with new version
#10 24.08 Creating SSH2 RSA key; this may take some time ...
#10 24.57 3072 SHA256:q/P8YQhYPqZ4tjqwKv/lQmAEnlbILzz1Pe1c+48Wwck root@buildkitsandbox (RSA)
#10 24.57 Creating SSH2 ECDSA key; this may take some time ...
#10 24.58 256 SHA256:yB2C+cIlKeFt+eIiOcG6GNpyknVBmMkeKN2OVZP+ItM root@buildkitsandbox (ECDSA)
#10 24.58 Creating SSH2 ED25519 key; this may take some time ...
#10 24.59 256 SHA256:507u0+mb0RcBEcutFtZ6wN3TczlpVx1oRzlwQ3O7kqM root@buildkitsandbox (ED25519)
#10 24.65 invoke-rc.d: could not determine current runlevel
#10 24.65 invoke-rc.d: policy-rc.d denied execution of start.
#10 24.82 Setting up liberror-perl (0.17029-1) ...
#10 24.82 Setting up git (1:2.34.1-1ubuntu1.15) ...
#10 24.83 Processing triggers for libc-bin (2.35-0ubuntu3.11) ...
#10 24.85 Processing triggers for ca-certificates (20240203~22.04.1) ...
#10 24.85 Updating certificates in /etc/ssl/certs...
#10 25.27 0 added, 0 removed; done.
#10 25.27 Running hooks in /etc/ca-certificates/update.d...
#10 25.27 done.
#10 DONE 25.5s

#12 [stage-1 5/8] COPY --from=builder /app/xy /usr/local/bin/xy
#12 DONE 0.1s

#13 [stage-1 6/8] COPY --from=builder /app/td /usr/local/bin/td
#13 DONE 0.0s

#14 [stage-1 7/8] COPY --from=builder /app/supercronic /usr/local/bin/supercronic
#14 DONE 0.0s

#15 [stage-1 8/8] COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
#15 DONE 0.1s

#16 exporting to image
#16 exporting layers
#16 exporting layers 1.6s done
#16 writing image sha256:3032e6b3c8f33308bb03bc27a88c50cdcd2457bba53512cc31761883686474c8 done
#16 naming to ghcr.io/xcq0607/xrayargo:latest done
#16 DONE 1.6s
```

