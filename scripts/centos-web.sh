#!/bin/bash

# Install Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# Install php
yum install -y php php-cli php-common php-devel php-mysql

# Download starter files
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/sriram-linux-aws/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/sriram-linux-aws/vagrant/master/files/info.php

