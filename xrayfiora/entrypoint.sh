#!/usr/bin/env sh

sed -i "s/UUID/$UUID/g" /app/xy/config.json
sed -i "s/DOMAIN/$DOMAIN/g" /app/keepalive.sh

# Ensure Fiora directory exists
mkdir -p /app/fiora

# Set correct permissions for MongoDB and Redis data directories
chown -R mongodb:mongodb /data/db
chown -R redis:redis /data/redis

exec "$@"