FROM alpine:3.17

RUN apk update
RUN apk add nginx

COPY assets assets
COPY assets/www www
RUN assets/nginx_setup.sh
RUN chmod +x assets/set_up_ssl_cert.sh
RUN apk add openssl
RUN assets/set_up_ssl_cert.sh
CMD ["nginx", "-g", "daemon off;"]
