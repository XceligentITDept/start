#!/bin/bash
echo "Creating Scripts Directory"
cd /
mkdir /scripts
export PATH="$PATH:/scripts"
echo "changing to Scripts Directory"
cd /scripts
echo "Starting apt-get update to install GIT"
read -p "Press [Enter] key to start install..."
apt-get update
apt-get install git
read -p "Press [Enter] key to start Desktop Central Download and install..."
wget --no-check-certificate https://github.com/XceligentITDept/DesktopCentral/raw/master/dc.sh
chmod +x /scripts/dc.sh
/scripts/dc.sh
