#!/bin/bash

yum install gcc make -y
yum install wget -y
cd /tmp
wget http://humdi.net/vnstat/vnstat-1.12.tar.gz
tar xzf vnstat-1.12.tar.gz
cd /tmp/vnstat-1.12

make 
make install
cp /tmp/vnstat-1.12/examples/init.d/redhat/vnstat /etc/init.d/vnstat
chmod +x /etc/init.d/vnstat
/etc/init.d/vnstat start
cd /etc/init.d/
chkconfig --add vnstat
chkconfig vnstat on

cd /usr/bin/
wget https://github.com/Munzy/custom_motd/raw/master/custom_motd
chmod +x custom_motd

echo 'custom_motd' >> /etc/profile
