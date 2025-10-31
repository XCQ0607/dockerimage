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

# VoceChat服务和R2备份环境变量
# VoceChat端口，默认值为3000，可选，示例输入：3000
ENV VOCE_PORT=3000 \
    # R2访问密钥ID，必填，示例输入：d38a22e2fcd7a6875c98e8fadc7b4f08
    R2_ACCESS_KEY_ID=d38a22e2fcd7a6875c98e8fadc7b4f08 \
    # R2秘密访问密钥，必填，示例输入：93aca2246b740fb0b6787d605eb0ee984a42d167a53d630719b57bcd111a9e3b
    R2_SECRET_ACCESS_KEY=93aca2246b740fb0b6787d605eb0ee984a42d167a53d630719b57bcd111a9e3b \
    # R2终结点，默认值为7edee57c816a663e631de31c492a6320.r2.cloudflarestorage.com，必填，示例输入：your-account.r2.cloudflarestorage.com
    R2_ENDPOINT=7edee57c816a663e631de31c492a6320.r2.cloudflarestorage.com \
    # R2存储桶名称，必填，示例输入：vocechat-backups
    R2_BUCKET_NAME=vocechat-backups \
    TZ=Asia/Shanghai \
    UUID=2982f122-9649-40dc-bc15-fa3ec91d8921 \
    DOMAIN=web3x-p.hf.space \
    # Cloudflared PAT
    ARGO_PAT= \
    # 设置HOME环境变量
    HOME=/home/user

# eyJhIjoiOGYxMTUwYmI3NGU5NzgwMmUwMTM2YTFkZTkzZTczMzEiLCJ0IjoiNmJjOTZlMWQtZmRiMC00OWYyLThiMjYtNjA4NjUxNjc3MDg1IiwicyI6IlpXUXdaVFJqTTJFdFpEbG1OUzAwWkRjMkxXSXpPRGt0WXpWalpXTmxZakJsT1RoaiJ9

COPY entrypoint.sh /entrypoint.sh
COPY app /app
COPY install.sh /install.sh

RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get install -y tzdata openssh-server curl ca-certificates wget vim net-tools supervisor unzip iputils-ping telnet git iproute2 docker.io s3cmd zip --no-install-recommends; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    chmod +x /entrypoint.sh; \
    chmod -R 777 /app; \
    # 为VoceChat和备份脚本设置执行权限
    chmod +x /app/voce/start-voce.sh; \
    chmod +x /app/backup/backup-voce.sh; \
    chmod +x /app/backup/restore-voce.sh; \
    chmod +x /app/backup/vocechat-backup-manager.sh; \
    chmod +x /app/backup/check-r2-connectivity.sh; \
    chmod +x /install.sh; \
    # 创建必要的目录并设置正确的权限
    mkdir -p /home/vocechat-server/data /home/user; \
    chown -R 1000:0 /home/vocechat-server /home/user; \
    chmod -R 777 /home/vocechat-server /home/user; \
    useradd -u 1000 -g 0 -m -s /bin/bash user; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
    echo $TZ > /etc/timezone

# 安装VoceChat
ENV DOCKER_ENV=true
RUN /install.sh

COPY --from=builder /app/xy /usr/local/bin/xy
COPY --from=builder /app/td /usr/local/bin/td
COPY --from=builder /app/supercronic /usr/local/bin/supercronic
# Copy cloudflared binary
COPY --from=builder /app/cloudflared /usr/local/bin/cloudflared

EXPOSE 7860 3000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["supervisord", "-c", "/app/supervisor/supervisord.conf"]