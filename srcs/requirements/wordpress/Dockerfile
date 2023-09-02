FROM alpine:3.17

#RUN apk update

RUN apk update && apk upgrade
RUN apk add php php-fpm php-mysqli
RUN apk add php php-fpm php-mysqli mysql-client php-phar php-cgi php-fileinfo php-json php-curl php-dom php-iconv php-session php-exif php-mbstring php-openssl php-xml php-tokenizer

RUN apk add wget

RUN mkdir -p /usr/share/webapps/
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN mkdir /var/www

RUN adduser -D -g 'www' www
RUN cp -R /wordpress/. /var/www/wordpress

RUN chown -R www:www /var/www/wordpress

COPY wp-config.php /var/www/wordpress/wp-config.php

RUN mkdir /var/run/php
RUN chown -R www:www /var/run/php
#CMD sh
#CMD ["/bin/sh", "-c", "php-fpm81", "--nodaemonize"]
ENTRYPOINT ["/usr/sbin/php-fpm81", "--nodaemonize"]
#ENTRYPOINT ["/usr/sbin/php-fpm81", "-f"]
