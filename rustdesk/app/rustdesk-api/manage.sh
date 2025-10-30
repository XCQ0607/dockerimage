#!/bin/bash

# This script manages the rustdesk-api-server setup and execution

# Set correct permissions for the rustdesk-api directory
chown -R 1000:0 /app/rustdesk-api
chmod -R 777 /app/rustdesk-api

# Function to check if rustdesk-api-server is already installed
check_installation() {
    if [ -d "/app/rustdesk-api" ] && [ -f "/app/rustdesk-api/manage.py" ]; then
        return 0
    else
        return 1
    fi
}

# Function to install rustdesk-api-server
install_rustdesk_api() {
    echo "Installing rustdesk-api-server..."
    /app/rustdesk-api/download.sh
}

# Function to run rustdesk-api-server
run_rustdesk_api() {
    echo "Starting rustdesk-api-server..."
    
    # Check if the downloaded run.sh exists and fix it if needed
    if [ -f "/app/rustdesk-api/run.sh" ]; then
        # Fix the run.sh file to use correct paths
        sed -i 's|cd /rustdesk-api-server|cd /app/rustdesk-api|g' /app/rustdesk-api/run.sh
        sed -i 's|./db_bak/db.sqlite3|./db.sqlite3_bak|g' /app/rustdesk-api/run.sh
        sed -i 's|python |python3 |g' /app/rustdesk-api/run.sh
        chmod +x /app/rustdesk-api/run.sh
        /app/rustdesk-api/run.sh
    else
        # Use our own run script
        /app/rustdesk-api/run.sh
    fi
}

# Main execution
if check_installation; then
    echo "rustdesk-api-server is already installed."
else
    echo "rustdesk-api-server not found. Installing..."
    install_rustdesk_api
fi

# Run the server
run_rustdesk_api