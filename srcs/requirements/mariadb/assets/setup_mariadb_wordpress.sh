#!/bin/sh

# Start MariaDB server in the background
mysqld_safe --user=mysql --datadir=/var/lib/mysql &

# Wait for the server to be ready
while ! mysqladmin ping --silent; do
    sleep 1
done

# Run SQL commands to set up WordPress user and database
mysql -uroot <<EOSQL
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'wordpress_user'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL ON wordpress.* TO 'wordpress_user'@'localhost';
FLUSH PRIVILEGES;
EOSQL

# Stop the MariaDB server
mysqladmin shutdown
echo "done"

