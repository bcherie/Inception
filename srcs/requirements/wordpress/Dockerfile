#wordpress+php
FROM  debian:buster
RUN apt-get update -y && apt-get install -y vim php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring php-xml net-tools curl
RUN mkdir /run/php/
#wp
# RUN		mkdir -p /var/www/wordpress
# RUN		chown -R www-data:www-data /var/www/wordpress
# RUN		chmod 777 /var/www/wordpress

ADD     https://wordpress.org/latest.tar.gz .
RUN     tar -xf latest.tar.gz && rm -rf latest.tar.gz
COPY    ./wp-config.php /
COPY	./www.conf /etc/php/7.3/fpm/pool.d/www.conf

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar

# RUN mv wp-cli.phar /usr/bin/wp

# RUN mv wp-cli.phar /usr/local/bin/wp

COPY	./start.sh /
#RUN mv wordpress /usr/local/bin/wp
RUN chmod -R 777 /etc/php/7.3/fpm/*
RUN chmod +x start.sh
CMD ./start.sh
#ENTRYPOINT service php-fpm7.3 start && /bin/bash
#ENTRYPOINT ["php-fpm7.3", "-F"]
#CMD ["rc-service php-fpm7 start"]
#CMD ["php-fpm7.3", "-F"]
#CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
