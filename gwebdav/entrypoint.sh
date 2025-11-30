#!/bin/sh

# Initialize arguments with passed command line arguments
ARGS="$@"

# Check for CLIENT_ID environment variable
if [ -n "$CLIENT_ID" ]; then
    ARGS="$ARGS --client-id=$CLIENT_ID"
fi

# Check for CLIENT_SECRET environment variable
if [ -n "$CLIENT_SECRET" ]; then
    ARGS="$ARGS --client-secret=$CLIENT_SECRET"
fi

# Execute the application with the constructed arguments
exec ./gdrive-webdav $ARGS
