#!/usr/bin/env sh

# Setup Nginx configuration for Hysteria TCP to UDP proxy

echo "Setting up Nginx configuration..."

# Create necessary directories
mkdir -p /usr/local/nginx/conf.d

# Copy configuration files
cp /app/nginx/nginx.conf /usr/local/nginx/conf/nginx.conf
cp /app/nginx/conf.d/hysteria.conf /usr/local/nginx/conf.d/hysteria.conf

# Set proper permissions
chown -R user:user /usr/local/nginx 2>/dev/null || echo "Could not change ownership of /usr/local/nginx"
chmod -R 755 /usr/local/nginx 2>/dev/null || echo "Could not change permissions of /usr/local/nginx"

echo "Nginx configuration setup complete."