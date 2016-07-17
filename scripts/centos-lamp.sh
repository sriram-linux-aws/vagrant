#!/bin/bash

# Apply patches
yum update -y --exclude=kernel

# Install tools
yum install -y git nano unzip screen

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

# Install mysql
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on
service mysqld start

mysql -u root -e "SHOW DATABASES";


# Download content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/sriram-linux-aws/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/sriram-linux-aws/vagrant/master/files/info.php


service http restart

