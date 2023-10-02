FROM alpine:3.17

RUN apk update
RUN apk add nginx
RUN mkdir -p /var/www

COPY assets assets
COPY static /var/www/static

RUN chmod +x /assets/nginx_setup.sh
RUN /assets/nginx_setup.sh

CMD ["nginx", "-g", "daemon off;"]
