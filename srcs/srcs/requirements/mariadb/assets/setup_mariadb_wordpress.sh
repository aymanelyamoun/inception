#!/bin/sh

service mariadb start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $WORDPRESS_DB_NAME;"

mysql -u root -e "CREATE USER IF NOT EXISTS '$WORDPRESS_USER'@'%' IDENTIFIED BY '$WORDPRESS_PASS';"

mysql -u root -e "FLUSH PRIVILEGES;"

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$WORDPRESS_USER'@'%';"

mysql -u root -p$WORDPRESS_USER -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$WORDPRESS_PASS';"

#mysql -u root -e "FLUSH PRIVILEGES;"

kill `pgrep mysqld`
#kill `cat /var/run/mysqld/mysqld.pid`
