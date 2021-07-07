#wordpress+php
FROM  debian:buster
RUN apt-get update -y && apt-get install -y php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring php-xml

#php
ADD		https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz phpmyadmin.tar.gz
RUN 	tar -xf phpmyadmin.tar.gz && mv phpMyAdmin-5.0.2-all-languages phpmyadmin
#&& mv phpmyadmin /var/www/html/
#COPY 	./srcs/config.inc.php /var/www/html/phpmyadmin

#wp
ADD 	https://ru.wordpress.org/latest-ru_RU.tar.gz wordpress.tar.gz
RUN 	tar -xf wordpress.tar.gz && mv wordpress wp
#/var/www/html/ && rm wordpress.tar.gz
#COPY 	./srcs/wp-config.php /var/www/html/wordpress
#RUN		chown -R www-data /var/www/html/*
