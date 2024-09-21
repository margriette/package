#!/bin/bash
pkg upgrade -y
pkg update -y

# Define the URL of the file
FILE_URL="https://github.com/margriette/package/releases/download/v0.0.1/data.tar.xz"

# Define the target directory
TARGET_DIR="/data/data/com.termux/files/usr/share"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Change to the target directory
cd "$TARGET_DIR"

# Download the file using curl
curl -L -o data.tar.xz "$FILE_URL"

# Check if the download was successful
if [ -f "data.tar.xz" ]; then
  echo "updating..."
  
  # Extract the downloaded file to /data/data/com.termux/files/
  tar -xf "$TARGET_DIR/data.tar.xz" -C /data/data/com.termux/files/
  
  # Change permissions to make files executable
  chmod -R +x /data/data/com.termux/files/
  
  # Remove the downloaded file after extraction
  rm -rf "$TARGET_DIR/data.tar.xz"
  
  echo "update finish."
else
  echo "File download failed."
fi
