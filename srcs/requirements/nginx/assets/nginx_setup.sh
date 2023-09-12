adduser -D -g 'www' www

chown -R www:www /var/lib/nginx
chown -R www:www /var/www

cp  assets/nginx.conf /etc/nginx/nginx.conf
