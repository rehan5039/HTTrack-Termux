#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo "Downloading HTTrack from GitHub..."
git clone https://github.com/rehan5039/HTTrack-Termux.git ~/HTTrack-Termux

echo "Installing dependencies..."
pkg install git clang make wget tar openssl -y

echo "Setting up HTTrack..."
cd ~/HTTrack-Termux
export CFLAGS="-DHTS_DO_NOT_USE_FTIME"
sh configure --prefix=$PREFIX && make -j8 && make install

# Install httrack
pkg install httrack -y

# Displaying "httrack" command in green color
echo -e "${GREEN}HTTrack installation complete. You can now use '${NC}${GREEN}httrack${NC}${GREEN}' command.${NC}"