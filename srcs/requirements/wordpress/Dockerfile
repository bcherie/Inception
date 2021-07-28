#wordpress+php
FROM  debian:buster
RUN apt-get update -y && apt-get install -y vim php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring php-xml net-tools
RUN mkdir /run/php/
#wp
RUN		mkdir -p /var/www/wordpress
# RUN		chmod 777 /var/www/wordpress/
# ADD 	https://ru.wordpress.org/latest-ru_RU.tar.gz wordpress.tar.gz
# RUN 	tar -xzvf wordpress.tar.gz
ADD     https://wordpress.org/latest.tar.gz .
RUN     tar -xf latest.tar.gz && rm -rf latest.tar.gz
# && \
#        mv /wordpress/* /var/www/wordpress/ && \
#        rm -rf /wordpress
COPY    ./wp-config-sample.php /

# RUN		mv wordpress /usr/src/wordpress/
# COPY	./wp-config-sample.php /usr/src/wordpress/
# RUN chown -R www-data:www-data /usr/src/wordpress/*

# RUN		mkdir -p /var/www/wordpress
# RUN		chown -R www-data /var/www/wordpress/*
# RUN		chmod 777 /var/www/wordpress/
# RUN		chown -R www-data /var/www/*
#COPY	./wp-config-sample.php /var/www/wordpress/
#/var/www/html/ && rm wordpress.tar.gz
#COPY	./wordpress/wp-config-sample.php /var/www/wordpress
COPY	./www.conf /etc/php/7.3/fpm/pool.d/www.conf
# COPY	./wordpress/config.inc.php /var/www/html/wordpress

# RUN		mkdir -p /var/www/wordopress/
# RUN		chmod 777 /var/www/wordpress/
#RUN		mv /wp /var/www/wordpress/
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
