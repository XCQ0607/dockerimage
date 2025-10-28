# 使用 Ubuntu 20.04 作为基础镜像
FROM ubuntu:20.04

# 设置环境变量
ENV DEBIAN_FRONTEND=noninteractive

# 使用清华大学镜像源
RUN sed -i 's|http://archive.ubuntu.com/ubuntu|https://mirrors.tuna.tsinghua.edu.cn/ubuntu|g' /etc/apt/sources.list && \
    sed -i 's|http://security.ubuntu.com/ubuntu|https://mirrors.tuna.tsinghua.edu.cn/ubuntu|g' /etc/apt/sources.list && \
    apt-get update --fix-missing

# 安装必需的工具和依赖
RUN apt-get install -y \
    curl \
    gnupg2 \
    ca-certificates \
    lsb-release \
    sudo \
    wget \
    supervisor \
    unzip \
    build-essential \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# 安装 MongoDB
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/mongodb-org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
RUN wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
RUN apt-get update && apt-get install -y mongodb-org

# 安装 Redis
RUN apt-get update && apt-get install -y redis-server

# 安装 Node.js 和 npm
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# 安装 Yarn
RUN npm install -g yarn

# 安装 git
RUN apt-get update && apt-get install -y git --no-install-recommends && rm -rf /var/lib/apt/lists/*

# 克隆并构建 Fiora
RUN git clone https://github.com/yinxin630/fiora.git /fiora
WORKDIR /fiora
RUN yarn install
RUN yarn build:web

# 安装 pm2
RUN npm install -g pm2

# 创建必需文件夹并设置权限
RUN mkdir -p /data/db /var/log/supervisor /app /fiora && \
    chmod -R 777 /data /var/log/supervisor /app /fiora

# 配置 supervisord
COPY supervisord.conf /etc/supervisor/supervisord.conf

# 暴露端口
EXPOSE 27017 6379 9200

# 启动 supervisord
CMD ["/usr/bin/supervisord"]
