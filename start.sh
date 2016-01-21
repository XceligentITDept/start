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


# add line to /etc/apt/sources.list
sed -i "\$a## Added for Salt-Minion Install - kbennett 1/20/16" /etc/apt/sources.list
sed -i "\$adeb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main" /etc/apt/sources.list

# then apt-get update
sudo apt-get update

# then install 
sudo apt-get install salt-minion -y --force-yes