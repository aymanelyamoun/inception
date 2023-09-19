FROM alpine:3.17

RUN apk update
RUN apk add redis

RUN sed -i 's/bind 127.0.0.1 -::1/bind * -::*/g' /etc/redis.conf 

#EXPOSE 6379
CMD redis-server --protected-mode no
