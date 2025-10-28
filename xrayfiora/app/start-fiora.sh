#!/bin/bash

echo "Starting Fiora startup script..."

# Load environment variables from .env file if it exists
if [ -f "/app/fiora/.env" ]; then
    echo "Loading environment variables from .env file"
    export $(cat /app/fiora/.env | xargs)
fi

echo "Using environment variables:"
echo "  Database: $Database"
echo "  RedisHost: $RedisHost"
echo "  RedisPort: $RedisPort"
echo "  Port: $Port"

# Wait for MongoDB to be ready
echo "Checking MongoDB connectivity..."
until mongosh --eval "db.stats()" > /dev/null 2>&1
do
    echo "Waiting for MongoDB to start..."
    sleep 2
done

echo "MongoDB is ready."

# Wait for Redis to be ready
echo "Checking Redis connectivity..."
until redis-cli ping > /dev/null 2>&1
do
    echo "Waiting for Redis to start..."
    sleep 2
done

echo "Redis is ready."

echo "Both MongoDB and Redis are ready. Preparing to start Fiora..."

# Navigate to Fiora directory
cd /app/fiora

# Check if we need to clone the repository
if [ ! -f "package.json" ]; then
    echo "Cloning Fiora repository..."
    git clone https://github.com/yinxin630/fiora.git .
fi

# Check if we need to install dependencies
if [ ! -d "node_modules" ]; then
    echo "Installing Node.js dependencies..."
    yarn install
fi

# Check if we need to build the web client
if [ ! -d "dist" ] || [ -z "$(ls -A dist)" ]; then
    echo "Building web client..."
    yarn build:web
fi

echo "Starting Fiora application..."
exec yarn start