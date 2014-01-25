#!/usr/bin/env bash
if [ ! -f /var/log/databasesetup ];
then
    echo "CREATE USER 'demouser'@'localhost' IDENTIFIED BY 'xxxxxx'" | mysql -uroot -pxxxxxx
    echo "CREATE USER 'demouser'@'%' IDENTIFIED BY 'xxxxx'" | mysql -uroot -pxxxxxxx
    echo "CREATE DATABASE demo" | mysql -uroot -ponlyneedthisforsolo
    echo "GRANT ALL PRIVILEGES on *.* TO demouser@'%' IDENTIFIED BY 'xxxxx' with grant option" | mysql -uroot -pxxxxxx
    #echo "GRANT ALL ON demo.* TO 'demouser'@'localhost'" | mysql -uroot -pxxxxxxxx
    #echo "GRANT ALL ON demo.* TO 'demouser'@'%'" | mysql -uroot -pxxxxxx
    echo "flush privileges" | mysql -uroot -pxxxxxx

    touch /var/log/databasesetup

    if [ -f /vagrant/sql/demo.sql ];
    then
        mysql -uroot -ponlyneedthisforsolo demo < /vagrant/sql/demo.sql
       /etc/init.d/mysql restart
   fi
fi


