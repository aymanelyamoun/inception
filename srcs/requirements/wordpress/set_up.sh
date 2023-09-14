wp core download
wp config create --dbname=wordpress --dbuser=wordpress_user --dbhost=db --dbpass=pass --allow-root
wp core install --url='10.13.100.16' --title="a simple website" --admin_user=fine --admin_password=pass --admin_email=fakemail@gmail.com --skip-email --allow-root
wp theme install zeever
wp theme activate zeever
wp user create uuuser bitchmail@gmail.com --user_pass=pass --allow-root
/usr/sbin/php-fpm81 --nodaemonize

