#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: [Aatmaja Ghundare]

echo "========================================"
echo " Open Source Manifesto Generator"
echo "========================================"
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and Output File ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Generate Manifesto ---
echo "On $DATE, I reflect on the power of open source." > $OUTPUT
echo "Using tools like $TOOL, I understand that true freedom means $FREEDOM." >> $OUTPUT
echo "I believe in sharing knowledge and innovation." >> $OUTPUT
echo "One day, I aim to build and freely share $BUILD for the benefit of everyone." >> $OUTPUT
echo "Open source is not just code — it is a philosophy of collaboration and growth." >> $OUTPUT

# --- Display Output ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
