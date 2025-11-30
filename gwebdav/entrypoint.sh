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

# Check for PORT environment variable
if [ -n "$PORT" ]; then
    ARGS="$ARGS --addr=:$PORT"
fi

# Check for TOKEN_FILE environment variable
if [ -n "$TOKEN_FILE" ]; then
    ARGS="$ARGS --token-file=$TOKEN_FILE"
fi

# Check for DEBUG environment variable
if [ "$DEBUG" = "1" ] || [ "$DEBUG" = "true" ]; then
    ARGS="$ARGS --debug"
fi

# Check for TRACE environment variable
if [ "$TRACE" = "1" ] || [ "$TRACE" = "true" ]; then
    ARGS="$ARGS --trace"
fi

# Execute the application with the constructed arguments
exec ./gdrive-webdav $ARGS
