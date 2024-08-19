#!/bin/bash

# Define the URL and the destination path
FILE_URL="https://github.com/margriette/package/releases/download/v1.0.0/boost.tar.xz"
DESTINATION_PATH="/data/data/com.termux/files/usr/glibc/share/"

# Download the file
curl -L -o /data/data/com.termux/files/home/boost.tar.xz "$FILE_URL"

# Extract the file
tar -xf /data/data/com.termux/files/home/boost.tar.xz -C "$DESTINATION_PATH"

# Delete the downloaded file
rm /data/data/com.termux/files/home/boost.tar.xz

# Self-delete the script
rm -- "$0"
