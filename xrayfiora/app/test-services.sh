#!/bin/bash

echo "Testing MongoDB connection..."
if mongosh --eval "db.stats()" > /dev/null 2>&1; then
    echo "MongoDB is running and accessible"
else
    echo "Failed to connect to MongoDB"
fi

echo "Testing Redis connection..."
if redis-cli ping > /dev/null 2>&1; then
    echo "Redis is running and accessible"
else
    echo "Failed to connect to Redis"
fi