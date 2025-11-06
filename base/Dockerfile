FROM ubuntu:22.04 AS builder
WORKDIR /app

RUN apt-get update; \
    apt-get install -y wget unzip build-essential libpcre3-dev zlib1g-dev libssl-dev libxml2-dev libxslt1-dev libgd-dev libgeoip-dev curl jq; \
    wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip; \
    unzip Xray-linux-64.zip; \
    rm -f Xray-linux-64.zip; \
    mv xray xy; \
    wget -O td https://github.com/tsl0922/ttyd/releases/latest/download/ttyd.x86_64; \
    chmod +x td; \
    wget -O supercronic https://github.com/aptible/supercronic/releases/latest/download/supercronic-linux-amd64; \
    chmod +x supercronic; \
    # Download cloudflared
    wget -O cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64; \
    chmod +x cloudflared; \
    # Download Hysteria
    wget -O hysteria https://github.com/apernet/hysteria/releases/latest/download/hysteria-linux-amd64; \
    chmod +x hysteria; \
    # Download and compile Nginx with all modules
    NGINX_VERSION="1.29.3"; \
    echo "Nginx version: $NGINX_VERSION"; \
    wget -O nginx.tar.gz "http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz"; \
    tar -xzf nginx.tar.gz; \
    cd nginx-*; \
    ./configure --prefix=/usr/local/bin/nginx \
                --with-http_ssl_module \
                --with-http_v2_module \
                --with-http_realip_module \
                --with-http_addition_module \
                --with-http_sub_module \
                --with-http_dav_module \
                --with-http_flv_module \
                --with-http_mp4_module \
                --with-http_gunzip_module \
                --with-http_gzip_static_module \
                --with-http_auth_request_module \
                --with-http_random_index_module \
                --with-http_secure_link_module \
                --with-http_degradation_module \
                --with-http_slice_module \
                --with-http_stub_status_module \
                --with-mail \
                --with-mail_ssl_module \
                --with-stream \
                --with-stream_ssl_module \
                --with-stream_realip_module \
                --with-stream_ssl_preread_module \
                --with-compat \
                --with-pcre \
                --with-pcre-jit \
                --with-threads \
                --with-file-aio \
                --with-http_xslt_module=dynamic \
                --with-http_image_filter_module=dynamic \
                --with-http_geoip_module=dynamic; \
    make && make install; \
    cd ..; \
    # 验证Nginx是否正确安装
    ls -la /usr/local/bin/nginx; \
    rm -rf nginx-${NGINX_VERSION}*
############################################################

FROM ubuntu:22.04

LABEL org.opencontainers.image.source="https://github.com/XCQ0607/dockerimage"

# 基础环境变量
# TZ：时区设置，默认值为Asia/Shanghai，非必填，示例输入：Asia/Shanghai
# UUID：Xray UUID，默认值为2982f122-9649-40dc-bc15-fa3ec91d8921，非必填，示例输入：your-uuid-here
# DOMAIN：域名设置，默认值为web3x-p.hf.space，非必填，示例输入：your-domain.hf.space
# ARGO_PAT：Cloudflared PAT，默认值为空，非必填，示例输入：your-cloudflare-pat
# HOME：用户主目录，默认值为/home/user，非必填，示例输入：/home/user
ENV TZ=Asia/Shanghai \
    UUID=2982f122-9649-40dc-bc15-fa3ec91d8921 \
    DOMAIN=web3x-p.hf.space \
    ARGO_PAT= \
    HOME=/home/user

# R2备份相关环境变量
# R2_ACCESS_KEY_ID：R2访问密钥ID，默认值为空，非必填，示例输入：your-access-key-id
# R2_SECRET_ACCESS_KEY：R2密钥，默认值为空，非必填，示例输入：your-secret-access-key
# R2_ENDPOINT：R2端点地址，默认值为空，非必填，示例输入：https://your-account-id.r2.cloudflarestorage.com
# R2_BUCKET_NAME：R2存储桶名称，默认值为空，非必填，示例输入：your-bucket-name
# BACKUP_NAME：备份文件名前缀，默认值为program，非必填，示例输入：your-program-name
# BACKUP_SOURCE_DIR：备份源目录，默认值为/app/data，非必填，示例输入：/path/to/source
# BACKUP_DEST_DIR：备份目标目录，默认值为/tmp，非必填，示例输入：/path/to/destination
# BACKUP_START_SCRIPT：备份前执行的脚本路径，默认值为空，非必填，示例输入：/path/to/start-script.sh
# BACKUP_STOP_SCRIPT：备份前停止服务的脚本路径，默认值为空，非必填，示例输入：/path/to/stop-script.sh
# RESTORE_TARGET_DIR：恢复目标目录，默认值为/app/data，非必填，示例输入：/path/to/restore-target
# RESTORE_SOURCE_DIR：恢复源目录（在备份文件中的路径），默认值为data，非必填，示例输入：data
# RESTORE_DEST_DIR：恢复文件下载目录，默认值为/tmp，非必填，示例输入：/path/to/restore-destination
# RESTORE_START_SCRIPT：恢复后启动服务的脚本路径，默认值为空，非必填，示例输入：/path/to/start-script.sh
# RESTORE_STOP_SCRIPT：恢复前停止服务的脚本路径，默认值为空，非必填，示例输入：/path/to/stop-script.sh
# KEEP_BACKUPS：保留备份文件数量，默认值为5，非必填，示例输入：5
# BACKUP_TIME：备份时间设置，支持X-YEAR-X-MONTH-X-D-X-H-X-M格式或标准cron表达式，默认值为"0-0-0-1-0-0"（每小时执行一次），非必填，示例输入：0-0-0-1-0-0 或 0 * * * *
# backup_on：是否启用备份功能，默认值为true，非必填，示例输入：true 或 false
# hc_on：是否启用健康检查功能，默认值为true，非必填，示例输入：true 或 false
# keep_time：保活任务执行间隔时间，支持X-YEAR-X-MONTH-X-D-X-H-X-M格式、纯数字（分钟）或标准cron表达式，默认值为"0-0-0-0-5-0"（每5分钟执行一次），非必填，示例输入：0-0-0-0-5-0 或 5 或 */5 * * * *
ENV R2_ACCESS_KEY_ID= \
    R2_SECRET_ACCESS_KEY= \
    R2_ENDPOINT= \
    R2_BUCKET_NAME= \
    BACKUP_NAME=program \
    BACKUP_SOURCE_DIR=/app/data \
    BACKUP_DEST_DIR=/tmp \
    BACKUP_START_SCRIPT= \
    BACKUP_STOP_SCRIPT= \
    RESTORE_TARGET_DIR=/app/data \
    RESTORE_SOURCE_DIR=data \
    RESTORE_DEST_DIR=/tmp \
    RESTORE_START_SCRIPT= \
    RESTORE_STOP_SCRIPT= \
    KEEP_BACKUPS=5 \
    BACKUP_TIME="0-0-0-1-0-0" \
    backup_on=true \
    hc_on=true \
    keep_time="0-0-0-0-5-0"

# 健康检查相关环境变量
# HC_PORT：健康检查端口，默认值为7860，非必填，示例输入：7860
# HC_TIME：健康检查时间设置，支持X-YEAR-X-MONTH-X-D-X-H-X-M格式或标准cron表达式，默认值为"0-0-0-0-1-0"（每分钟执行一次），非必填，示例输入：0-0-0-0-1-0 或 */1 * * * *
# HC_START_SCRIPT：健康检查失败时启动服务的脚本路径，默认值为空，非必填，示例输入：/path/to/start-script.sh
# HC_SERVICE_NAME：健康检查服务名称，默认值为program，非必填，示例输入：your-service-name
ENV HC_PORT=7860 \
    HC_TIME="0-0-0-0-1-0" \
    HC_START_SCRIPT= \
    HC_SERVICE_NAME=program

COPY entrypoint.sh /entrypoint.sh
COPY app /app

RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install -y tzdata openssh-server curl ca-certificates wget vim net-tools supervisor unzip iputils-ping telnet git iproute2 docker.io s3cmd zip sudo socat netcat --no-install-recommends; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    # 创建程序可能使用的所有目录并设置权限
    mkdir -p /app/data /app/backup /app/cron /app/supervisor /app/xy /home/user /tmp ; \
    chown -R 1000:0 /app/data /app/backup /app/cron /app/supervisor /app/xy /home/user /tmp; \
    chmod -R 777 /app/data /app/backup /app/cron /app/supervisor /app/xy /home/user /tmp ; \
    chmod +x /entrypoint.sh; \
    chmod -R 777 /app; \
    # 为user用户配置无密码sudo权限
    echo "user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers; \
    # # 确保用户具有完整的root权限
    # usermod -aG root user; \
    # usermod -aG sudo user; \
    # 设置备份脚本和cron设置脚本权限
    chmod +x /app/backup/*.sh /app/*.sh; \
    useradd -u 1000 -g 0 -m -s /bin/bash user; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone

# 创建supervisor socket目录并设置权限
RUN mkdir -p /var/run/supervisor; \
    touch /var/run/supervisor/supervisor.sock; \
    chmod 777 /var/run/supervisor; \
    chmod 777 /var/run/supervisor/supervisor.sock

# Copy binary
COPY --from=builder /app/xy /usr/local/bin/xy
COPY --from=builder /app/td /usr/local/bin/td
COPY --from=builder /app/supercronic /usr/local/bin/supercronic
COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared
COPY --from=builder /app/hysteria /usr/local/bin/hysteria
COPY --from=builder /usr/local/bin/nginx /usr/local/bin/nginx

EXPOSE 7860

ENTRYPOINT ["/entrypoint.sh"]
CMD ["supervisord", "-c", "/app/supervisor/supervisord.conf"]