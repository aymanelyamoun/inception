FROM alpine:3.17

#RUN apk update

RUN apk update && apk upgrade
#RUN apk add php php-fpm php-mysqli
RUN apk add php php-fpm php-mysqli mysql-client php-phar php-cgi php-fileinfo php-json php-curl php-dom php-iconv php-session php-exif php-mbstring php-openssl php-xml php-tokenizer

RUN apk add wget
RUN apk add curl

RUN mkdir -p /usr/share/webapps/
#RUN wget https://wordpress.org/latest.tar.gz
#RUN tar -xzvf latest.tar.gz
#RUN rm -fr latest.tar.gz
RUN mkdir /var/www
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/bin/wp


RUN adduser -D -g 'www' www
RUN chown -R www:www /var/www/

#RUN cp -R /wordpress/. /var/www/wordpress
#RUN rm -rf /wordpress

RUN sed -i 's/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/g' /etc/php81/php-fpm.d/www.conf

EXPOSE 9000

WORKDIR /var/www/wordpress
RUN mkdir /var/run/php
RUN chown -R www:www /var/run/php
COPY set_up.sh set_up.sh
RUN chown www:www set_up.sh

RUN chmod +x set_up.sh
ENTRYPOINT ./set_up.sh && /usr/sbin/php-fpm81 --nodaemonize
#ENTRYPOINT ["/usr/sbin/php-fpm81", "-F"]
