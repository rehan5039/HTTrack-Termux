#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo "Updating and upgrading Termux..."
apt update && apt upgrade -y

echo "Installing HTTrack using apt..."
apt install httrack -y

echo "Installing HTTrack using pkg..."
pkg install httrack -y

echo "Displaying HTTrack help message..."
httrack --help

# Displaying completion message in green color
echo -e "${GREEN}HTTrack installation and setup complete. 
httrack Command run${NC}"