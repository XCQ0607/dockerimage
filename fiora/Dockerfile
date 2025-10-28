# ===============================
# Fiora 全功能一体化容器构建
# ===============================
FROM ubuntu:20.04

# 禁止交互模式
ENV DEBIAN_FRONTEND=noninteractive

# ===============================
# 安装系统依赖
# ===============================
RUN apt-get update && apt-get install -y \
    curl \
    gnupg2 \
    ca-certificates \
    lsb-release \
    sudo \
    wget \
    git \
    supervisor \
    unzip \
    build-essential \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# ===============================
# 安装 MongoDB
# ===============================
RUN echo "deb http://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list \
    && wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add - \
    && apt-get update && apt-get install -y mongodb-org

# ===============================
# 安装 Redis
# ===============================
RUN apt-get update && apt-get install -y redis-server

# ===============================
# 安装 Node.js 14.x 和 Yarn
# ===============================
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn pm2

# ===============================
# 创建必须的目录并设置权限
# ===============================
RUN mkdir -p /data/db /var/log/mongodb /var/log/redis /var/log/fiora /fiora \
    && chmod -R 777 /data /var/log /fiora

# ===============================
# 克隆并构建 Fiora
# ===============================
WORKDIR /fiora
RUN git clone https://github.com/yinxin630/fiora.git . \
    && yarn install \
    && yarn build:web

# ===============================
# Supervisor 配置文件
# ===============================
COPY supervisord.conf /etc/supervisor/supervisord.conf

# ===============================
# 暴露端口
# ===============================
EXPOSE 27017 6379 9200

# ===============================
# 启动所有服务
# ===============================
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
