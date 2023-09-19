wp core download 2>/dev/null
wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_USER --dbhost=db --dbpass=$WORDPRESS_PASS --allow-root 2>/dev/null
wp core install --url='10.13.100.111' --title="wordpress website" --admin_user=fine --admin_password=pass --admin_email=fakemail@gmail.com --skip-email --allow-root 2>/dev/null

wp plugin install redis-cache --activate 2>/dev/null
wp config set WP_CACHE true --type=constant 
wp config set WP_REDIS_HOST redis --add --allow-root
wp config set WP_REDIS_PORT 6379 --add --allow-root
wp redis enable --allow-root

#wp theme install bizboost
#wp theme activate bizboost

/usr/sbin/php-fpm81 --nodaemonize

