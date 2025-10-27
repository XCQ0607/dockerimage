FROM ubuntu:24.04

# 安装基础工具、Node.js、Yarn、MongoDB、Redis、supervisord
RUN apt-get update && apt-get install -y \
    curl wget gnupg lsb-release build-essential \
    ca-certificates sudo git supervisor \
    && rm -rf /var/lib/apt/lists/*

# 安装 Node.js v14 LTS
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn pm2

# 安装 MongoDB
RUN wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add - \
    && echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list \
    && apt-get update \
    && apt-get install -y mongodb-org \
    && mkdir -p /data/db

# 安装 Redis
RUN apt-get update && apt-get install -y redis-server

# 创建 Fiora 工作目录
WORKDIR /app

# 克隆 Fiora 仓库
RUN git clone -b master https://github.com/yinxin630/fiora.git .

# 安装依赖并构建客户端
RUN yarn install \
    && yarn build:web

# 配置环境变量
RUN echo "JwtSecret=SuperSecretFioraToken" > .env2

# 拷贝 supervisord 配置和启动脚本
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# 容器启动
CMD ["/entrypoint.sh"]
