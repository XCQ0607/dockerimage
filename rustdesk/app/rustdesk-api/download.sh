#!/bin/bash

# Source profile to ensure PYTHONPATH is set
source /etc/profile

# Download the latest rustdesk-api-server from GitHub
echo "Downloading rustdesk-api-server..."
cd /tmp
rm -rf rustdesk-api-server
# Use root user to avoid git permission issues
sudo -E -u root git clone https://github.com/kingmo888/rustdesk-api-server.git
cd rustdesk-api-server

# Create the application directory if it doesn't exist
mkdir -p /app/rustdesk-api

# Copy files to the application directory
cp -r ./* /app/rustdesk-api/

# Set correct permissions (user 1000:0, permissions 777)
chown -R 1000:0 /app/rustdesk-api
chmod -R 777 /app/rustdesk-api

# Install Python and dependencies if not already installed
if ! command -v python3 &> /dev/null; then
    apt-get update
    apt-get install -y python3 python3-pip python3-dev default-libmysqlclient-dev build-essential pkg-config
fi

# Install Python packages using root permissions to avoid conflicts
cd /app/rustdesk-api
# Use root permissions and explicit target directory to avoid pip configuration conflicts
sudo -E -u root pip3 install --no-cache-dir --disable-pip-version-check --target /opt/pip-packages -r requirements.txt

# Create db directory if it doesn't exist
mkdir -p /app/rustdesk-api/db

# Copy database backup if it exists
if [ -f "./db.sqlite3_bak" ]; then
    cp ./db.sqlite3_bak /app/rustdesk-api/db/db.sqlite3
fi

# Set correct permissions for db directory
chown -R 1000:0 /app/rustdesk-api/db
chmod -R 777 /app/rustdesk-api/db

echo "rustdesk-api-server downloaded and installed successfully."