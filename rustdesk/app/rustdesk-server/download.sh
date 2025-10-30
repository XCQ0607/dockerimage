#!/bin/bash

# Source profile to ensure environment variables are set
source /etc/profile

# Download the latest rustdesk-server from GitHub
echo "Downloading rustdesk-server..."
cd /tmp
rm -rf rustdesk-server*
rm -rf amd64
# Use root user to avoid git permission issues
sudo -E -u root wget https://github.com/rustdesk/rustdesk-server/releases/latest/download/rustdesk-server-linux-amd64.zip
sudo -E -u root unzip rustdesk-server-linux-amd64.zip

# Create the application directory if it doesn't exist
mkdir -p /app/rustdesk-server

# Copy files to the application directory
sudo -E -u root cp -r amd64/* /app/rustdesk-server/

# Set correct permissions (user 1000:0, permissions 777)
chown -R 1000:0 /app/rustdesk-server
chmod -R 777 /app/rustdesk-server

# Make binaries executable
chmod +x /app/rustdesk-server/hbbs
chmod +x /app/rustdesk-server/hbbr

echo "rustdesk-server downloaded and installed successfully."