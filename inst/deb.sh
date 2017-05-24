#!/bin/bash

apt-get update 
apt-get install ca-certificates -y
apt-get install vnstat -y
apt-get install wget -y


cd /usr/bin/
wget https://raw.githubusercontent.com/Munzy/custom_motd/master/custom_motd
chmod +x custom_motd

echo 'custom_motd' >> /etc/profile