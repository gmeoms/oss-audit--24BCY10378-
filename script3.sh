#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Rajat Kumar
# Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================="
echo "         Directory Audit Report          "
echo "========================================="

# Loop through the array of directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract human-readable size using du and cut
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo "-----------------------------------------"
echo "         Git Config Audit (TODO)         "
echo "-----------------------------------------"

# Checking Git's specific configuration file footprint
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    GIT_PERMS=$(ls -ld "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    GIT_SIZE=$(du -sh "$GIT_CONFIG" 2>/dev/null | cut -f1)
    echo "$GIT_CONFIG => Permissions: $GIT_PERMS | Size: $GIT_SIZE"
else
    echo "Git config ($GIT_CONFIG) does not exist yet."
    echo "(Note: It generates automatically when you first set your git username)."
fi

echo "========================================="