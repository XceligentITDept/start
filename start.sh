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

# Get GIT install Script
wget --no-check-certificate https://github.com/XceligentITDept/start/raw/master/gh.sh
chmod +x /scripts/gh.sh
/scripts/gh.sh

# Gets Desktop Central Agent Script, and runs to install Desktop Linux Agent
wget --no-check-certificate https://github.com/XceligentITDept/DesktopCentral/raw/master/dc.sh
chmod +x /scripts/dc.sh
/scripts/dc.sh
