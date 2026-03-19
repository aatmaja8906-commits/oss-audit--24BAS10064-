#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: [Aatmaja Ghundare]

# --- Important Directories ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "      Directory Audit Report"
echo "========================================"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "========================================"
echo "   Python Location Check"
echo "========================================"

# --- Check Python location ---
PYTHON_PATH=$(which python3)

if [ -f "$PYTHON_PATH" ]; then
    PERMS=$(ls -l $PYTHON_PATH | awk '{print $1, $3, $4}')
    echo "Python found at: $PYTHON_PATH"
    echo "Permissions: $PERMS"
else
    echo "Python not found on system"
fi

echo "========================================"
