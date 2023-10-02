FROM debian:bullseye

RUN apt update
RUN apt install systemctl wget -y
RUN apt install apache2 php php-mysqli -y

RUN mkdir -p /var/www && mkdir -p /var/www/adminer

RUN wget "http://www.adminer.org/latest.php" -O /var/www/adminer.php

#COPY assets assets

#RUN cp assets/adminer.conf /etc/apache2/sites-available/adminer.conf
#RUN cp assets/ports.conf /etc/apache2/porst.conf

#RUN systemctl start apache2

#RUN a2ensite adminer.conf

#RUN a2dissite 000-default.conf

#RUN systemctl restart apache2

#CMD ["apache2ctl", "-D", "FOREGROUND"]
CMD php -S 0.0.0.0:9090 /var/www/adminer.php
