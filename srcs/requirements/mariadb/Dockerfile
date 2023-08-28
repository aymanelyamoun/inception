FROM alpine:3.17

RUN apk update
RUN apk add mysql mysql-client

#RUN /etc/init.d/mariadb setup
#RUN /etc/init.d/mariadb start

ENTRYPOINT mariadb -u root -p localhost
