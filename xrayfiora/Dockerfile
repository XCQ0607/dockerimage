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

ENV TZ=Asia/Shanghai \
    UUID=2982f122-9649-40dc-bc15-fa3ec91d8921 \
    DOMAIN=web3x-p.hf.space \
    # Cloudflared PAT
    AUGO_PAT=
# eyJhIjoiOGYxMTUwYmI3NGU5NzgwMmUwMTM2YTFkZTkzZTczMzEiLCJ0IjoiNmJjOTZlMWQtZmRiMC00OWYyLThiMjYtNjA4NjUxNjc3MDg1IiwicyI6IlpXUXdaVFJqTTJFdFpEbG1OUzAwWkRjMkxXSXpPRGt0WXpWalpXTmxZakJsT1RoaiJ9

# Install Node.js, MongoDB, Redis and other dependencies
RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install -y tzdata openssh-server curl ca-certificates wget vim net-tools supervisor unzip iputils-ping telnet git iproute2 gnupg; \
    # Install Node.js
    curl -fsSL https://deb.nodesource.com/setup_14.x | bash -; \
    apt-get install -y nodejs; \
    # Install MongoDB
    wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -; \
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list; \
    apt-get update; \
    apt-get install -y mongodb-org; \
    # Install Redis (without starting the service)
    apt-get install -y redis-server; \
    # Clean up
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    # Install yarn globally
    npm install -g yarn

COPY entrypoint.sh /entrypoint.sh
COPY app /app

RUN chmod +x /entrypoint.sh; \
    chmod -R 777 /app; \
    useradd -u 1000 -g 0 -m -s /bin/bash user; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone; \
    # Configure git to avoid issues during cloning
    git config --global user.email "fiora@example.com"; \
    git config --global user.name "Fiora Installer"

# Create directories for MongoDB and Redis data
RUN mkdir -p /data/db /data/redis; \
    chown -R mongodb:mongodb /data/db; \
    chown -R redis:redis /data/redis

# Create directory for Fiora
RUN mkdir -p /app/fiora

# Set executable permissions for scripts
RUN chmod +x /app/start-fiora.sh; \
    chmod +x /app/test-services.sh

COPY --from=builder /app/xy /usr/local/bin/xy
COPY --from=builder /app/td /usr/local/bin/td
COPY --from=builder /app/supercronic /usr/local/bin/supercronic
# Copy cloudflared binary
COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared

# Expose ports for all services
EXPOSE 7860 9200 27017 6379 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["supervisord", "-c", "/app/supervisor/supervisord.conf"]