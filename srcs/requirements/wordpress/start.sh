#!/bin/bash
mkdir -p /var/www/wordpress
mv wp-config.php /var/www/wordpress/wp-config-sample.php
chown -R www-data:www-data /var/www/wordpress
# chmod 777 /var/www/wordpress
mv /wordpress/* /var/www/wordpress
cd /var/www/wordpress
find . -type f -exec chmod 664 {} +
find . -type d -exec chmod 775 {} +
chmod 660 wp-config.php
# mv wp-config-sample.php /var/www/wordpress

# curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp

# cd /var/www/wordpress
# wp core download --allow-root
# mv wp-cli.phar /usr/local/bin/wp
# wp core config --dbhost=${WORDPRESS_DB_HOST} --dbname=${MYSQL_WP_NAME} --dbuser=${MYSQL_USER_NAME} --dbpass=${MYSQL_USER_PASSWORD} --allow-root
# wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN_N} --admin_password=${WP_ADMIN_PW} --admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root
# wp core config --dbhost=${WORDPRESS_DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --allow-root
# wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN_N} --admin_password=${WP_ADMIN_PW}  --allow-root

# wp user create --allow-root second second@42.fr --role=author --user_pass=1111
# mv * /var/www/wordpress/

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

cd /var/www/wordpress
wp core download --allow-root

wp core config --dbhost=${WORDPRESS_DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --allow-root
wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN_N} --admin_password=${WP_ADMIN_PW}  --allow-root

wp user create --allow-root second second@42.fr --role=author --user_pass=1111

/usr/sbin/php-fpm7.3 --nodaemonize
