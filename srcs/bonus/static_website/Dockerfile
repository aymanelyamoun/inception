FROM alpine:3.17

RUN apk update
RUN apk add php php-fpm

RUN mkdir /var/www -p && mkdir -p /var/www/wordpress

COPY static_website /var/www/wordpress/

ENTRYPOINT ["/usr/sbin/php-fpm81", "-F"]
