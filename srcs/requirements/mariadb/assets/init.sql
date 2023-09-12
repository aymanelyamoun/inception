CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'wordpress_user'@'%' IDENTIFIED BY 'pass';
GRANT ALL ON wordpress.* TO 'wordpress_user'@'%';
FLUSH PRIVILEGES;
