#!/bin/sh

# Start MariaDB server in the background
mysqld_safe --user=root --datadir=/var/lib/mysql &
#mariadb

# Wait for the server to be ready
while ! mysqladmin ping --silent; do
    sleep 1
done

# Run SQL commands to set up WordPress user and database

mysql -uroot <<EOSQL
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'wordpress_user'@'%' IDENTIFIED BY 'pass';
GRANT ALL ON wordpress.* TO 'wordpress_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOSQL
#kill `cat /var/run/mysqld/mysqld.pid`

# Stop the MariaDB server
echo "shutting down mysql"
mysqladmin shutdown
#echo "done"
