#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Boi you ain't root"
  echo "Please switch to root with command su root"
  exit 1
fi
echo " |---> Boi you're root"

echo " |---> Updating..."
sudo apt update

echo " |---> Upgrading..."
sudo apt upgrade

sudo DEBIAN_FRONTEND=noninteractive apt install -yq wireshark
echo " |---> Wireshark installed"

sudo apt-get install net-tools
echo " |---> Net tools installed"

sudo apt-get install traceroute
echo " |---> Traceroute installed"

sudo apt-get install nmap -y
echo " |---> Nmap installed"
