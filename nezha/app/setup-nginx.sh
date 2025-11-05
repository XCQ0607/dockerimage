#!/usr/bin/env sh

# Setup Nginx configuration for Hysteria TCP to UDP proxy

echo "Setting up Nginx configuration..."

# Create necessary directories
mkdir -p /etc/nginx/conf.d

# Copy configuration files
cp /app/nginx/nginx.conf /etc/nginx/nginx.conf
cp /app/nginx/conf.d/hysteria.conf /etc/nginx/conf.d/hysteria.conf

# Set proper permissions
chown -R user:user /etc/nginx 2>/dev/null || echo "Could not change ownership of /etc/nginx"
chmod -R 755 /etc/nginx 2>/dev/null || echo "Could not change permissions of /etc/nginx"

echo "Nginx configuration setup complete."