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
#RUN sed -i 's/#bind-address=0.0.0.0/bind-address=0.0.0.0/g' /etc/my.cnf.d/mariadb-server.cnf

# Expose the default MySQL/MariaDB port
EXPOSE 3306
#CMD ["mysqld", "--user=mysql"]
#CMD ["sh", "-c", "/assets/setup_mariadb_wordpress.sh && mysqld_safe --user=mysql --datadir=/var/lib/mysql"]
#CMD ["/usr/bin/mysqld_safe", "--user=mysql", "--datadir=/var/lib/mysql", "--default-authentication-plugin=mysql_native_password"]
CMD /usr/bin/mysqld_safe --no-defaults --user=root --datadir=/var/lib/mysql
#CMD mariadbd --user=root --datadir=/var/lib/mysql #--init-file=/assets/init.sql
#CMD --user=mysql --datadir="/var/lib/mysql" --default-authentication-plugin=mysql_native_password & 
#CMD sh
