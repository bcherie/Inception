#!/bin/bash
service mysql start

echo "CREATE DATABASE ${DB_NAME};"| mysql -u root --skip-password
echo "CREATE USER ${DB_NAME}@'%' IDENTIFIED BY '${DB_PASSWORD}';"| mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_NAME}'@'%' WITH GRANT OPTION;"| mysql -u root --skip-password
echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
echo "update mysql.user set plugin='' where user LIKE 'bcherie';"| mysql -u root --skip-password
echo "ALTER USER '$SQL_ROOT'@'localhost' IDENTIFIED BY '$SQL_ROOT_PWD';"

service mysql stop;
mysqld;
#/usr/bin/mysqld_safe
