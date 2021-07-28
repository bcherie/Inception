#!/bin/bash
mv /wordpress/* /var/www/wordpress
mv wp-config-sample.php /var/www/wordpress
/usr/sbin/php-fpm7.3 --nodaemonize
service php7.3-fpm start
/usr/bin/php7.3
