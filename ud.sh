#!/bin/bash

clear
echo "the script starts now."

sudo apt-get update
echo "Now we will get updates"
sudo apt-get upgrade -y
echo "Now we will autoremove those that are not needed anymore"
sudo apt-get autoremove -y
echo "all done"