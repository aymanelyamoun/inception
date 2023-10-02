wp core download
wp config create --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_USER --dbhost=db --dbpass=$WORDPRESS_PASS
wp core install --url='ael-yamo.42.fr' --title="wordpress website" --admin_user=fine --admin_password=$ADMIN_PASS --admin_email=fakemail@gmail.com --skip-email --allow-root

wp user create fuser fake_user@gmail.com --role=subscriber --user_pass=$USER_PASS

wp plugin install redis-cache --activate
wp config set WP_CACHE true --type=constant 
wp config set WP_REDIS_HOST redis --add --allow-root
wp config set WP_REDIS_PORT 6379 --add --allow-root
wp redis enable --allow-root

#wp theme install bizboost
#wp theme activate bizboost

