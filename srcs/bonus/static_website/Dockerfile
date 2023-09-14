FROM alpine:3.17

RUN apk update
RUN apk add php php-fpm

RUN mkdir -p /var/www && mkdir -p /var/www/wordpress


COPY static static

ENTRYPOINT mv static /var/www/wordpress/static_website
