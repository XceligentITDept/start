#!/bin/bash

# Creates Scripts Directory, adds to PATH
echo "Creating Scripts Directory"
cd /
mkdir /scripts
export PATH="$PATH:/scripts"
cd /scripts

# Gets Updates Scripts
wget --no-check-certificate https://github.com/XceligentITDept/start/raw/master/ud.sh
chmod +x /scripts/ud.sh
/scripts/ud.sh

# Starts GIT install
echo "Starting apt-get update to install GIT"
read -p "Press [Enter] key to start install..."
apt-get update
apt-get install git

# Gets Desktop Central Agent Script, and runs to install Desktop Linux Agent
read -p "Press [Enter] key to start Desktop Central Download and install..."
wget --no-check-certificate https://github.com/XceligentITDept/DesktopCentral/raw/master/dc.sh
chmod +x /scripts/dc.sh
/scripts/dc.sh
