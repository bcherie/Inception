#wordpress+php
FROM  debian:buster
RUN apt-get update -y && apt-get install -y php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring php-xml

#php
ADD		https://files.phpmyadmin.net/phpMyAdmin/5.1.1/phpMyAdmin-5.1.1-all-languages.tar.gz phpMyAdmin-5.1.1-all-languages.tar.gz
RUN		tar -xf phpMyAdmin-5.1.1-all-languages.tar.gz
#&& mv phpMyAdmin-5.1.1-all-languages phpmyadmin && mv phpmyadmin /var/www/html/
#COPY 	./srcs/config.inc.php /var/www/html/phpmyadmin

#wp
ADD 	https://ru.wordpress.org/latest-ru_RU.tar.gz wordpress-5.7.2-ru_RU.tar.gz
RUN 	tar -xf wordpress-5.7.2-ru_RU.tar.gz

#/var/www/html/ && rm wordpress.tar.gz
# COPY	./wordpress/wp-config-sample.php /var/www/html/wordpress
# COPY	./wordpress/config.inc.php /var/www/html/wordpress
RUN mv wordpress /usr/local/bin/wp
#RUN		chown -R www-data /var/www/html/*
