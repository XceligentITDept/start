#!/bin/bash

cd /
mkdir /scripts
export PATH="$PATH:/scripts"
cd /scripts
apt-get update
apt-get install git
wget --no-check-certificate https://github.com/XceligentITDept/DesktopCentral/raw/master/dc.sh
chmod +x /scripts/dc.sh
/scripts/dc.sh
