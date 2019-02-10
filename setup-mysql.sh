#!/bin/bash

#--------------------------------------
# Update Server
#--------------------------------------
echo -e "---- Update Server ----"
sudo apt-get update -y
sudo apt-get upgrade -y
#--------------------------------------
# Install MySQL
#--------------------------------------
echo -e "---- Install MySQL APT Configuration Repository ----"
MYSQL_APT_VERSION="0.8.12-1"
wget http://dev.mysql.com/get/mysql-apt-config_"$MYSQL_APT_VERSION"_all.deb
sudo dpkg -i mysql-apt-config_"$MYSQL_APT_VERSION"_all.deb
sudo apt-get install mysql-server mysql-client libmysqlclient-dev -y
echo -e "---- Check MySQL Installation Status ----"
sudo service mysql restart
sudo service mysql status
echo -e "---- Remove package ----"
sudo rm mysql-apt-config_"$MYSQL_APT_VERSION"_all.deb
