#!/bin/bash


REPO_URL="https://github.com/NetApp/trident.git"
TRIDENT_VERSION="v24.06.1" # repoName=netapp/trident
DEST_DIR="trident"

# Remove destination directory if it exists
if [ -d "$DEST_DIR" ]; then
    rm -rf "$DEST_DIR"
fi

# Clone with depth=1 and specific tag
git clone --depth 1 --branch "$TRIDENT_VERSION" "$REPO_URL" "$DEST_DIR"

# Verify the clone was successful
if [ $? -eq 0 ]; then
    echo "Successfully cloned Trident $TRIDENT_VERSION"
else
    echo "Failed to clone repository"
    exit 1
fi