#!/bin/sh

# Start MariaDB server in the background
mysqld_safe --user=root --datadir=/var/lib/mysql &
#mariadb

# Wait for the server to be ready
while ! mysqladmin ping --silent; do
    sleep 1
done

# Run SQL commands to set up WordPress user and database
echo $WORDPRESS_USER >> test_file
mysql -uroot <<EOSQL
CREATE DATABASE IF NOT EXISTS ${WORDPRESS_DB_NAME};
CREATE USER '${WORDPRESS_USER}'@'%' IDENTIFIED BY '${WORDPRESS_PASS}';
CREATE USER '${WORDPRESS_USER2}'@'%' IDENTIFIED BY '${WORDPRESS_PASS2}';
GRANT ALL ON ${WORDPRESS_DB_NAME}.* TO '${WORDPRESS_USER}'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOSQL
#kill `cat /var/run/mysqld/mysqld.pid`

# Stop the MariaDB server
#echo "shutting down mysql"
mysqladmin shutdown
#echo "done"
