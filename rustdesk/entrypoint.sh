#!/usr/bin/env sh

# Replace placeholders in config files
sed -i "s/UUID/$UUID/g" /app/xy/config.json
sed -i "s/DOMAIN/$DOMAIN/g" /app/keepalive.sh

# Download rustdesk-api-server if not already present
if [ ! -d "/app/rustdesk-api" ] || [ -z "$(ls -A /app/rustdesk-api)" ]; then
    echo "Downloading rustdesk-api-server..."
    /app/rustdesk-api/download.sh
else
    echo "rustdesk-api-server already exists, skipping download"
fi

# Set correct permissions (user 1000:0, permissions 777)
chown -R 1000:0 /app/rustdesk-api
chmod -R 777 /app/rustdesk-api

# Execute the main command
exec "$@"