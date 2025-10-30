FROM ubuntu:22.04 AS builder

WORKDIR /app

RUN apt-get update; \
    apt-get install -y wget unzip; \
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
    chmod +x cloudflared

############################################################

FROM ubuntu:22.04

LABEL org.opencontainers.image.source="https://github.com/XCQ0607/dockerimage"

# Environment variables for all services
ENV TZ=Asia/Shanghai \
    # TimeZone：时区设置，默认值为Asia/Shanghai，必填，示例输入：Asia/Shanghai
    UUID=2982f122-9649-40dc-bc15-fa3ec91d8921 \
    # UUID：用户唯一标识符，默认值为2982f122-9649-40dc-bc15-fa3ec91d8921，必填，示例输入：your-uuid-here
    DOMAIN=web3x-desk.hf.space \
    # Domain：域名设置，默认值为web3x-desk.hf.space，必填，示例输入：your-domain.hf.space
    # Cloudflared PAT
    ARGO_PAT= \
    # ARGO_PAT：Cloudflared隧道令牌，默认值为空，可选，示例输入：your-cloudflared-pat
    # RustDesk API Server Settings
    SECRET_KEY=xcq0607 \
    # SECRET_KEY：Django密钥，默认值为xcq0607，必填，示例输入：your-secret-key
    DATABASE_TYPE=MYSQL \
    # DATABASE_TYPE：数据库类型，默认值为MYSQL，必填，示例输入：MYSQL
    MYSQL_DBNAME=rustdesk \
    # MYSQL_DBNAME：MySQL数据库名称，默认值为rustdesk，必填，示例输入：your-database-name
    MYSQL_HOST=mysql2.sqlpub.com \
    # MYSQL_HOST：MySQL主机地址，默认值为mysql2.sqlpub.com，必填，示例输入：your-mysql-host
    MYSQL_USER=xcq06071 \
    # MYSQL_USER：MySQL用户名，默认值为xcq06071，必填，示例输入：your-mysql-user
    MYSQL_PASSWORD=QMAzY6gm74t8WSBC \
    # MYSQL_PASSWORD：MySQL密码，默认值为QMAzY6gm74t8WSBC，必填，示例输入：your-mysql-password
    MYSQL_PORT=3307 \
    # MYSQL_PORT：MySQL端口，默认值为3307，必填，示例输入：3306
    # CSRF_TRUSTED_ORIGINS= \
    # CSRF_TRUSTED_ORIGINS：CSRF信任的源，默认值为空，可选，示例输入：http://localhost:8000
    ID_SERVER= \
    # ID_SERVER：ID服务器地址，默认值为空，可选，示例输入：your-id-server
    DEBUG=False \
    # DEBUG：调试模式，默认值为False，可选，示例输入：True
    ALLOW_REGISTRATION=True \
    # ALLOW_REGISTRATION：允许注册，默认值为True，可选，示例输入：False
    LANGUAGE_CODE=zh-hans \
    # LANGUAGE_CODE：语言代码，默认值为zh-hans，可选，示例输入：en-us
    HOST=0.0.0.0 \
    # HOST：主机地址，默认值为0.0.0.0，必填，示例输入：0.0.0.0
    # RustDesk Server Settings
    # RUSTDESK_KEY: RustDesk服务器密钥，默认值为空，可选，示例输入：your_rustdesk_key
    RUSTDESK_KEY= \
    # RUSTDESK_PORT: RustDesk ID服务器端口，默认值为21116，可选，示例输入：21116
    RUSTDESK_PORT=21116 \
    # RUSTDESK_RELAY_PORT: RustDesk中继服务器端口，默认值为21117，可选，示例输入：21117
    RUSTDESK_RELAY_PORT=21117

# Copy entrypoint script and app directory
COPY entrypoint.sh /entrypoint.sh
COPY app /app

# Install system packages
RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install -y tzdata openssh-server curl ca-certificates wget vim net-tools supervisor unzip iputils-ping telnet git iproute2 python3 python3-pip python3-dev default-libmysqlclient-dev build-essential pkg-config sudo --no-install-recommends; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    chmod +x /entrypoint.sh; \
    chmod -R 777 /app; \
    # Create directories with correct permissions (user 1000:0, permissions 777)
    mkdir -p /data/db /data/redis /app/rustdesk-api /app/rustdesk-server /opt/pip-packages; \
    chown -R 1000:0 /data/db /data/redis /app/rustdesk-api /app/rustdesk-server /opt/pip-packages; \
    chmod -R 777 /data/db /data/redis /app/rustdesk-api /app/rustdesk-server /opt/pip-packages; \
    # Create user
    useradd -u 1000 -g 0 -m -s /bin/bash user; \
    # Set timezone
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone; \
    # Configure pip to use a dedicated directory for packages to avoid permission issues
    mkdir -p /home/user/.local; \
    chown -R 1000:0 /home/user/.local; \
    chmod -R 777 /home/user/.local; \
    # Create pip-packages directory without global pip.conf to avoid conflicts
    mkdir -p /opt/pip-packages; \
    # Add pip-packages to Python path in bashrc for interactive and non-interactive shells
    echo "export PYTHONPATH=/opt/pip-packages:\$PYTHONPATH" >> /etc/bash.bashrc; \
    echo "export PYTHONPATH=/opt/pip-packages:\$PYTHONPATH" >> /home/user/.bashrc; \
    # Also add to profile for system-wide availability
    echo "export PYTHONPATH=/opt/pip-packages:\$PYTHONPATH" >> /etc/profile; \
    # Configure sudo to allow user to run commands as root without password
    echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers; \
    # Create symbolic links for python command
    ln -s /usr/bin/python3 /usr/bin/python

# Copy binaries from builder stage
COPY --from=builder /app/xy /usr/local/bin/xy
COPY --from=builder /app/td /usr/local/bin/td
COPY --from=builder /app/supercronic /usr/local/bin/supercronic
# Copy cloudflared binary
COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared

# Make scripts executable
RUN chmod +x /app/rustdesk-api/*.sh && chmod +x /app/rustdesk-server/*.sh

EXPOSE 7860 21114 21115 21116 21117

ENTRYPOINT ["/entrypoint.sh"]
CMD ["supervisord", "-c", "/app/supervisor/supervisord.conf"]