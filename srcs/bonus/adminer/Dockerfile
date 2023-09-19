FROM alpine:3.17

RUN apk update
RUN apk add wget
RUN mkdir -p /var/www && mkdir -p /var/www/wordpress

RUN mkdir -p adminer
WORKDIR /adminer
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
WORKDIR /
ENTRYPOINT mv /adminer /var/www/wordpress/adminer
