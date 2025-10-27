# 使用官方 Fiora 镜像作为基础
FROM suisuijiang/fiora

# 安装 Redis
RUN apt-get update && apt-get install -y redis-server && rm -rf /var/lib/apt/lists/*

# 设置生产环境
ENV NODE_ENV=production

# MongoDB Atlas 云数据库连接（替换成你的账号密码）
ENV Database=mongodb+srv://xcq0607:wCaDvQ3bsqY95VlS@cluster0.lfjwbif.mongodb.net/fiora

# Redis 本地配置
ENV REDIS_HOST=127.0.0.1
ENV REDIS_PORT=6379
ENV REDIS_PASSWORD=
ENV REDIS_TLS=false

# 暴露 Fiora 端口
EXPOSE 9200

# 使用 supervisord 同时启动 Redis 和 Fiora
RUN apt-get update && apt-get install -y supervisor && rm -rf /var/lib/apt/lists/*

# 添加 supervisord 配置文件
RUN mkdir -p /etc/supervisor/conf.d
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 启动 supervisord
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
