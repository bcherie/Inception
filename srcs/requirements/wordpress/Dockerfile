#wordpress+php
FROM  debian:buster
RUN apt-get update -y && apt-get install -y php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring php-xml

#wp
ADD 	https://ru.wordpress.org/latest-ru_RU.tar.gz wordpress-5.7.2-ru_RU.tar.gz
RUN 	tar -xf wordpress-5.7.2-ru_RU.tar.gz

#/var/www/html/ && rm wordpress.tar.gz
#COPY	./wordpress/wp-config-sample.php /var/www/wordpress
COPY	./www.conf /etc/php/7.3/fpm/pool.d/www.conf
# COPY	./wordpress/config.inc.php /var/www/html/wordpress
COPY ./wp-config-sample.php /wordpress/wp-config.php
COPY	./start.sh ./
#RUN mv wordpress /usr/local/bin/wp
#RUN		chown -R www-data /var/www/html/*
RUN	chmod -R 777 /wordpress/*
#ENTRYPOINT service php-fpm7.3 start && /bin/bash
# ENTRYPOINT ["php-fpm7.3", "-F"]
CMD ["tail", "-f", "/dev/null"]
