FROM alpine:3.17

RUN apk update
RUN apk add nginx

COPY assets assets
COPY assets/www www
RUN assets/nginx_setup.sh

ENTRYPOINT ["nginx", "-g", "daemon off;"]
