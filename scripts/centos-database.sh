#!/bin/bash

# Install mysql
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on
service mysqld start

mysql -u root -e "SHOW DATABASES";
