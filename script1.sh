#!/bin/bash
# Script 1: System Identity Report
# Author: Rajat Kumar
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Rajat Kumar"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DISTRO=$(grep "^PRETTY_NAME" /etc/os-release | cut -d '=' -f 2 | tr -d '"')
CURRENT_DATE=$(date +"%A, %B %d, %Y %T")
OS_LICENSE="GNU General Public License version 2 (GPL v2)"

# --- Display ---
echo "========================================="
echo "          The Open Source Audit          "
echo "========================================="
echo "Student Name : $STUDENT_NAME"
echo "Software     : $SOFTWARE_CHOICE"
echo "-----------------------------------------"
echo "OS / Distro  : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Direct. : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_DATE"
echo "-----------------------------------------"
echo "License Note : The core Linux kernel powering this"
echo "               system is covered by the $OS_LICENSE."
echo "========================================="