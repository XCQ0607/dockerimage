#!/bin/bash

# Source profile to ensure PYTHONPATH is set
source /etc/profile

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

# Run migrations
# Use sudo to ensure proper permissions
sudo -E -u root python3 manage.py makemigrations
sudo -E -u root python3 manage.py migrate

# Start the server
sudo -E -u root python3 manage.py runserver 0.0.0.0:21114