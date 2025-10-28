# =========================================================
# Fiora 一体化容器（Node.js + MongoDB + Redis + PM2）
# 基础镜像：node:14-bullseye
# =========================================================

FROM node:14-bullseye

# 设置时区和环境变量
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Shanghai \
    NODE_ENV=production

# -------------------------------
# 安装系统依赖
# -------------------------------
RUN apt-get update --fix-missing && \
    apt-get install -y --no-install-recommends \
    wget curl git supervisor gnupg2 ca-certificates lsb-release \
    redis-server python3 python3-pip unzip \
    && rm -rf /var/lib/apt/lists/*

# -------------------------------
# 安装 MongoDB (Debian bullseye 官方5.0+源)
# -------------------------------
RUN wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add - && \
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/debian bullseye/mongodb-org/5.0 main" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list && \
    apt-get update && apt-get install -y mongodb-org && \
    rm -rf /var/lib/apt/lists/*

# -------------------------------
# 创建目录并开放权限
# -------------------------------
RUN mkdir -p /data/db /var/log/supervisor /app /fiora && \
    chmod -R 777 /data /var/log/supervisor /app /fiora

# -------------------------------
# 克隆并构建 Fiora
# -------------------------------
WORKDIR /fiora
RUN git clone https://github.com/yinxin630/fiora.git . && \
    yarn install && \
    yarn build:web

# -------------------------------
# 安装 PM2
# -------------------------------
RUN npm install -g pm2

# -------------------------------
# 预设环境变量（你也可以用 Docker 环境变量覆盖）
# -------------------------------
ENV Database="mongodb://localhost:27017/fiora" \
    RedisHost="127.0.0.1" \
    JwtSecret="changeme_secret"

# -------------------------------
# 配置 Supervisor
# -------------------------------
RUN echo "[supervisord]\nnodaemon=true\n" > /etc/supervisor/supervisord.conf && \
    echo "\n[program:mongodb]\ncommand=/usr/bin/mongod --bind_ip_all\nautostart=true\nautorestart=true\npriority=10\n" >> /etc/supervisor/supervisord.conf && \
    echo "\n[program:redis]\ncommand=/usr/bin/redis-server --bind 0.0.0.0\nautostart=true\nautorestart=true\npriority=20\n" >> /etc/supervisor/supervisord.conf && \
    echo "\n[program:fiora]\ncommand=pm2 start yarn --name fiora -- start && pm2 logs fiora --no-color\ndirectory=/fiora\nautostart=true\nautorestart=true\npriority=30\n" >> /etc/supervisor/supervisord.conf

# -------------------------------
# 暴露端口
# -------------------------------
EXPOSE 9200 27017 6379

# -------------------------------
# 启动容器
# -------------------------------
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
