#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Rajat Kumar
# Course: Open Source Software

# Demonstrating the alias concept via comment as requested by the rubric:
# An alias is a custom shortcut for a command. For example, if we ran:
# alias gen_manifesto='./script5.sh'
# We could run this entire script just by typing 'gen_manifesto' in the terminal.

echo "========================================="
echo "    Open Source Manifesto Generator      "
echo "========================================="
echo "Answer three questions to generate your manifesto."
echo

# Using read -p to capture user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you?: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

echo "-----------------------------------------"
echo "Generating..."
echo "-----------------------------------------"

# Writing to file using > (overwrite/create) and >> (append)
echo "--- The Open Source Manifesto of $USER_NAME ---" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Software must empower, not restrict. I rely on $TOOL daily. To me, open source means $FREEDOM. Someday, I hope to build and freely share a $BUILD, so the global community can use, learn, and improve upon it together." >> "$OUTPUT"

echo "Manifesto successfully saved to $OUTPUT"
echo "Here is what you wrote:"
echo "-----------------------------------------"
cat "$OUTPUT"
echo "========================================="