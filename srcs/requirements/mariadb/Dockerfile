FROM alpine:3.17

RUN apk update
RUN apk add mysql mysql-client
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN mkdir -p /var/lib/mysql
RUN chown -R mysql:mysql /var/lib/mysql
COPY assets assets

#RUN /etc/init.d/mariadb setup
#RUN /etc/init.d/mariadb start

# Initialize the MariaDB system databases during image build
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

RUN assets/setup_mariadb_wordpress.sh

# Expose the default MySQL/MariaDB port
EXPOSE 3306

#CMD ["mysqld", "--user=mysql"]
#CMD ["sh", "-c", "/assets/setup_mariadb_wordpress.sh && mysqld_safe --user=mysql --datadir=/var/lib/mysql"]
CMD ["mysqld_safe", "--user=mysql"]

#ENTRYPOINT mariadb -u root -p localhost
