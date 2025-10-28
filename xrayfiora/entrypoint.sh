#!/usr/bin/env sh

sed -i "s/UUID/$UUID/g" /app/xy/config.json
sed -i "s/DOMAIN/$DOMAIN/g" /app/keepalive.sh

# Ensure Fiora directory exists
mkdir -p /app/fiora

# Set correct permissions for MongoDB and Redis data directories
mkdir -p /data/db /data/redis
chown -R user:user /data/db /data/redis
chmod 777 /data/db /data/redis

# Make sure the user has write permissions to the log directories
mkdir -p /tmp
chmod 777 /tmp

exec "$@"