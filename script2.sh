#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Rajat Kumar
# Course: Open Source Software

PACKAGE="git"

echo "========================================="
echo "         FOSS Package Inspector          "
echo "========================================="

# Check if package is installed using dpkg
if dpkg -l "$PACKAGE" &> /dev/null; then
    echo "$PACKAGE is installed."
    echo "--- Package Details ---"
    dpkg -s "$PACKAGE" | grep -E '^Version|^Maintainer'
else
    echo "$PACKAGE is NOT installed."
fi

echo "-----------------------------------------"
echo "Philosophy Note:"

# Case statement for package descriptions
case $PACKAGE in
    httpd|apache2) 
        echo "Apache: the web server that built the open internet" 
        ;;
    mysql|mysql-server) 
        echo "MySQL: open source at the heart of millions of apps" 
        ;;
    git) 
        echo "Git: The tool Linus built when proprietary failed him." 
        ;;
    python3)
        echo "Python: A language shaped entirely by community."
        ;;
    *) 
        echo "$PACKAGE: A valuable part of the open-source ecosystem." 
        ;;
esac
echo "========================================="