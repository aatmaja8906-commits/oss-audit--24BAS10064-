#!/bin/bash
# Script 1: System Identity Report
# Author: [Aatmaja Ghundare]
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Aatmaja Ghundare"
SOFTWARE_CHOICE="Python"

# --- System Information ---
KERNEL=$(uname -r)                     # Kernel version
USER_NAME=$(whoami)                   # Current user
UPTIME=$(uptime -p)                   # System uptime
DATE=$(date)                          # Current date and time
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)  # Linux distribution

# --- Display Output ---
echo "========================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Software Selected : $SOFTWARE_CHOICE"
echo "Kernel Version    : $KERNEL"
echo "Logged-in User    : $USER_NAME"
echo "System Uptime     : $UPTIME"
echo "Current Date/Time : $DATE"
echo "Linux Distribution: $DISTRO"
echo "License Info      : GNU General Public License (GPL)"
echo "========================================"
