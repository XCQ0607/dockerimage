#!/bin/bash

# Source profile to ensure environment variables are set
source /etc/profile

cd /app/rustdesk-server

# Create data directory if it doesn't exist
mkdir -p ./data

# Set correct permissions (user 1000:0, permissions 777)
chown -R 1000:0 ./data
chmod -R 777 ./data

# Run hbbs and hbbr with proper ports
echo "Starting hbbs on port $RUSTDESK_PORT..."
./hbbs -p $RUSTDESK_PORT -c ./data &
HBBS_PID=$!

echo "Starting hbbr on port $RUSTDESK_RELAY_PORT..."
./hbbr -p $RUSTDESK_RELAY_PORT -c ./data &
HBBR_PID=$!

# Wait for processes
wait $HBBS_PID
wait $HBBR_PID