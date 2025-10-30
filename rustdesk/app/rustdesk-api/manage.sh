#!/bin/bash

# This script manages the rustdesk-api-server setup and execution

# Set correct permissions for the rustdesk-api directory
chown -R 1000:0 /app/rustdesk-api
chmod -R 777 /app/rustdesk-api

# Source profile to ensure PYTHONPATH is set
source /etc/profile

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
        cd /app/rustdesk-api && /app/rustdesk-api/run.sh
    else
        # Use our own run approach
        cd /app/rustdesk-api
        
        # Check if database directory exists, if not create it
        if [ ! -d "./db" ]; then
            mkdir -p ./db
            echo "Created db directory"
            # Set correct permissions (user 1000:0, permissions 777)
            chown 1000:0 ./db
            chmod 777 ./db
        fi

        # Check if database file exists, if not copy from backup
        if [ ! -e "./db/db.sqlite3" ]; then
            if [ -e "./db.sqlite3_bak" ]; then
                cp "./db.sqlite3_bak" "./db/db.sqlite3"
                echo "Initialized database from backup"
                # Set correct permissions
                chown 1000:0 ./db/db.sqlite3
                chmod 777 ./db/db.sqlite3
            else
                echo "No database backup found, will create new database"
            fi
        fi

        # Run migrations and start server
        python3 manage.py makemigrations
        python3 manage.py migrate
        python3 manage.py runserver 0.0.0.0:21114
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