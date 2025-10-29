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
    UUID=2982f122-9649-40dc-bc15-fa3ec91d8921 \
    DOMAIN=web3x-p.hf.space \
    # Cloudflared PAT
    AUGO_PAT= \
    # RustDesk API Server Settings
    SECRET_KEY=xcq0607 \
    DATABASE_TYPE=MYSQL \
    MYSQL_DBNAME=rustdesk \
    MYSQL_HOST=mysql2.sqlpub.com \
    MYSQL_USER=xcq06071 \
    MYSQL_PASSWORD=QMAzY6gm74t8WSBC \
    MYSQL_PORT=3307 \
    CSRF_TRUSTED_ORIGINS= \
    ID_SERVER= \
    DEBUG=False \
    ALLOW_REGISTRATION=True \
    LANGUAGE_CODE=zh-hans \
    HOST=0.0.0.0

# Copy entrypoint script and app directory
COPY entrypoint.sh /entrypoint.sh
COPY app /app

# Install system packages
RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install -y tzdata openssh-server curl ca-certificates wget vim net-tools supervisor unzip iputils-ping telnet git iproute2 python3 python3-pip python3-dev default-libmysqlclient-dev build-essential pkg-config --no-install-recommends; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    chmod +x /entrypoint.sh; \
    chmod -R 777 /app; \
    # Create directories with correct permissions (user 1000:0, permissions 777)
    mkdir -p /data/db /data/redis /app/rustdesk-api; \
    chown -R 1000:0 /data/db /data/redis /app/rustdesk-api; \
    chmod -R 777 /data/db /data/redis /app/rustdesk-api; \
    # Create user
    useradd -u 1000 -g 0 -m -s /bin/bash user; \
    # Set timezone
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone

# Copy binaries from builder stage
COPY --from=builder /app/xy /usr/local/bin/xy
COPY --from=builder /app/td /usr/local/bin/td
COPY --from=builder /app/supercronic /usr/local/bin/supercronic
# Copy cloudflared binary
COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared

# Make scripts executable
RUN chmod +x /app/rustdesk-api/*.sh

EXPOSE 7860 21114

ENTRYPOINT ["/entrypoint.sh"]
CMD ["supervisord", "-c", "/app/supervisor/supervisord.conf"]