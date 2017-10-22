#!/bin/bash
# ******************************************
# Program: LAMP Stack Installation Script
# Developer: Pratik Patil
# Date: 10-04-2015
# Last Updated: 11-01-2016
# ******************************************

if [ "`lsb_release -is`" == "Ubuntu" ] || [ "`lsb_release -is`" == "Debian" ]
then
    sudo apt-get -y install mysql-server mysql-client mysql-workbench libmysqld-dev;
    sudo apt-get -y install apache2 php7.0 libapache2-mod-php php-mcrypt phpmyadmin;
    sudo chmod 755 -R /var/www/;
    sudo printf "<?php\nphpinfo();\n?>" > /var/www/html/info.php;
    sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
    sudo service apache2 restart;

elif [ "`lsb_release -is`" == "CentOS" ] || [ "`lsb_release -is`" == "RedHat" ]
then
    sudo yum -y install httpd mysql-server mysql-devel php php-mysql php-fpm;
    sudo yum -y install epel-release phpmyadmin rpm-build redhat-rpm-config;
    sudo yum -y install mysql-community-release-el7-5.noarch.rpm proj;
    sudo yum -y install tinyxml libzip mysql-workbench-community;
    sudo chmod 777 -R /var/www/;
    sudo printf "<?php\nphpinfo();\n?>" > /var/www/html/info.php;
    sudo service mysqld restart;
    sudo service httpd restart;
    sudo chkconfig httpd on;
    sudo chkconfig mysqld on;

else
    echo "Unsupported Operating System";
fi