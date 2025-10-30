#!/bin/bash

# Source profile to ensure environment variables are set
source /etc/profile

# This script manages the rustdesk-server setup and execution

# Set correct permissions for the rustdesk-server directory
chown -R 1000:0 /app/rustdesk-server
chmod -R 777 /app/rustdesk-server

# Function to check if rustdesk-server is already installed
check_installation() {
    if [ -d "/app/rustdesk-server" ] && [ -f "/app/rustdesk-server/hbbs" ] && [ -f "/app/rustdesk-server/hbbr" ]; then
        return 0
    else
        return 1
    fi
}

# Function to install rustdesk-server
install_rustdesk_server() {
    echo "Installing rustdesk-server..."
    /app/rustdesk-server/download.sh
}

# Function to run rustdesk-server
run_rustdesk_server() {
    echo "Starting rustdesk-server..."
    
    # Use our own run approach
    cd /app/rustdesk-server
    
    # Check if data directory exists, if not create it
    if [ ! -d "./data" ]; then
        mkdir -p ./data
        echo "Created data directory"
        # Set correct permissions (user 1000:0, permissions 777)
        chown 1000:0 ./data
        chmod 777 ./data
    fi

    # Run hbbs and hbbr
    echo "Starting hbbs..."
    sudo -E -u root ./hbbs -c ./data &
    HBBS_PID=$!
    
    echo "Starting hbbr..."
    sudo -E -u root ./hbbr -c ./data &
    HBBR_PID=$!
    
    # Wait for processes
    wait $HBBS_PID
    wait $HBBR_PID
}

# Main execution
if check_installation; then
    echo "rustdesk-server is already installed."
else
    echo "rustdesk-server not found. Installing..."
    install_rustdesk_server
fi

# Run the server
run_rustdesk_server