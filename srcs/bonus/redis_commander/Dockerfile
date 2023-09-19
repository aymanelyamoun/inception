FROM alpine:3.17

RUN apk update
RUN apk add npm
#RUN apk add wget
RUN npm install -g redis-commander
#RUN wget -O redis_commander.tar.gz https://github.com/joeferner/redis-commander/tarball/master
#RUN tar -xzvf redis_commander.tar.gz


CMD redis-commander --redis-host redis --redis-port 6379 
