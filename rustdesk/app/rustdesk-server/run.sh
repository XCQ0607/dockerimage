#!/bin/bash

# Source profile to ensure environment variables are set
source /etc/profile

cd /app/rustdesk-server

# Create data directory if it doesn't exist
mkdir -p ./data

# Set correct permissions (user 1000:0, permissions 777)
chown -R 1000:0 ./data
chmod -R 777 ./data

# Run hbbs and hbbr with proper ports and key
echo "Starting hbbs on port $RUSTDESK_PORT with key..."
./hbbs -p $RUSTDESK_PORT -k $RUSTDESK_KEY -r localhost:$RUSTDESK_RELAY_PORT &
HBBS_PID=$!

echo "Starting hbbr on port $RUSTDESK_RELAY_PORT with key..."
./hbbr -p $RUSTDESK_RELAY_PORT -k $RUSTDESK_KEY &
HBBR_PID=$!

# Wait for processes
wait $HBBS_PID
wait $HBBR_PID