# 使用轻量 Node.js 镜像（自带 npm/yarn）
FROM node:14-buster

# 切换 apt 源为国内镜像（Debian 版）
RUN sed -i 's|deb.debian.org|mirrors.aliyun.com|g' /etc/apt/sources.list && \
    sed -i 's|security.debian.org|mirrors.aliyun.com|g' /etc/apt/sources.list

# 环境变量设置
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Shanghai

# 安装系统依赖、MongoDB 和 Redis
RUN apt-get update --fix-missing && apt-get install -y --no-install-recommends \
    wget curl git supervisor redis-server gnupg2 ca-certificates lsb-release python3 python3-pip unzip \
    && rm -rf /var/lib/apt/lists/*

# 安装 MongoDB（官方二进制版）
RUN wget -qO - https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu2004-5.0.15.tgz && \
    tar -xzf mongodb-linux-x86_64-ubuntu2004-5.0.15.tgz && \
    mv mongodb-linux-x86_64-ubuntu2004-5.0.15 /usr/local/mongodb && \
    rm mongodb-linux-x86_64-ubuntu2004-5.0.15.tgz && \
    ln -s /usr/local/mongodb/bin/* /usr/local/bin/

# 安装 pm2
RUN npm install -g pm2

# 创建必要目录并赋予最高权限
RUN mkdir -p /data/db /data/logs /var/log/supervisor /fiora && \
    chmod -R 777 /data /var/log/supervisor /fiora

# 克隆并构建 Fiora
RUN git clone https://github.com/yinxin630/fiora.git /fiora
WORKDIR /fiora

# 安装依赖并构建前端
RUN yarn install && yarn build:web

# 创建环境变量文件（可自定义 JwtSecret）
RUN echo "JwtSecret=SuperSecretKey123" > .env

# 拷贝 supervisor 配置
COPY supervisord.conf /etc/supervisor/supervisord.conf

# 暴露端口
EXPOSE 9200 27017 6379

# 启动 supervisord
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
