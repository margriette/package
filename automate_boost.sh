#!/bin/bash

# Define the URL and the destination path
FILE_URL="https://github.com/margriette/package/releases/download/v1.0.0/boost.tar.xz"
DESTINATION_PATH="/data/data/com.termux/files/usr/glibc/share/"
DOWNLOAD_PATH="/data/data/com.termux/files/home/boost.tar.xz"

# Download the file
curl -L -o "$DOWNLOAD_PATH" "$FILE_URL"

# Move the file to the destination path
mv "$DOWNLOAD_PATH" "$DESTINATION_PATH"

# Delete the downloaded file
rm "$DOWNLOAD_PATH"

# Self-delete the script
rm -- "$0"
