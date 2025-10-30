#!/bin/bash

# Source profile to ensure environment variables are set
source /etc/profile

cd /app/rustdesk-server

# Create data directory if it doesn't exist
mkdir -p ./data

# Set correct permissions (user 1000:0, permissions 777)
chown -R 1000:0 ./data
chmod -R 777 ./data

# Run hbbs and hbbr
# Use sudo to ensure proper permissions
echo "Starting hbbs..."
sudo -E -u root ./hbbs -c ./data &
HBBS_PID=$!

echo "Starting hbbr..."
sudo -E -u root ./hbbr -c ./data &
HBBR_PID=$!

# Wait for processes
wait $HBBS_PID
wait $HBBR_PID