#!/usr/bin/env sh

sed -i "s/UUID/$UUID/g" /app/xy/config.json
sed -i "s/DOMAIN/$DOMAIN/g" /app/keepalive.sh

# Ensure Fiora directory exists with correct permissions
mkdir -p /app/fiora
chown -R 1000:0 /app/fiora
chmod 777 /app/fiora

# Set correct permissions for MongoDB and Redis data directories
mkdir -p /data/db /data/redis
chown -R 1000:0 /data/db /data/redis
chmod 777 /data/db /data/redis

# Make sure the user has write permissions to the log directories
mkdir -p /tmp
chmod 777 /tmp

exec "$@"