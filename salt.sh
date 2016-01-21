#!/bin/bash
# for adding salt-minion

# add line to /etc/apt/sources.list
sed -i "\$a## Added for Salt-Minion Install - kbennett 1/20/16" /etc/apt/sources.list
sed -i "\$adeb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main" /etc/apt/sources.list

# then apt-get update
sudo apt-get update

# then install 
sudo apt-get install salt-minion -y