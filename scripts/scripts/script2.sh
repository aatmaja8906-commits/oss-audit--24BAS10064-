#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: [Aatmaja Ghundare]

PACKAGE="python3"

# --- Check if package is installed ---
if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed."
    
    # Display package information
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# --- Case Statement for Philosophy Note ---
case $PACKAGE in
    python3)
        echo "Python: a simple, powerful language built by the community for everyone."
        ;;
    git)
        echo "Git: distributed version control that empowers developers worldwide."
        ;;
    vlc)
        echo "VLC: open-source media player that supports almost every format."
        ;;
    firefox)
        echo "Firefox: a browser focused on privacy and open web standards."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
