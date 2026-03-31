#!/bin/bash
# Script 4: Log File Analyzer
# Author: Rajat Kumar
# Course: Open Source Software
# Usage: ./script4.sh <logfile> [keyword]

LOGFILE=$1
# Default keyword is 'error' if none is provided
KEYWORD=${2:-"error"}
COUNT=0

echo "========================================="
echo "           Log File Analyzer             "
echo "========================================="

# Loop to retry if the file is empty or does not exist
while [ ! -s "$LOGFILE" ]; do
    echo "Warning: File '$LOGFILE' is empty or does not exist."
    read -p "Please enter a valid, non-empty log file path: " LOGFILE
done

echo "Analyzing '$LOGFILE' for the keyword: '$KEYWORD'..."

# Read the file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "-----------------------------------------"
echo "Summary: Keyword '$KEYWORD' found $COUNT times."
echo "-----------------------------------------"

# Print the last 5 matching lines using tail + grep
if [ $COUNT -gt 0 ]; then
    echo "Last 5 occurrences:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
echo "========================================="