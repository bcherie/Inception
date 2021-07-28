mkdir -p /var/lib/mysql
chmod 777 /var/lib/*
# chmod 777 /var/run/mysqld/mysqld.sock

mariadb-install-db -u root
#mysql_install_db --user=mysql --datadir=/var/lib/mysql
# mysql_install_db
mysqld -u root & sleep 5

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%' WITH GRANT OPTION;"
mysql -u root -e "FLUSH PRIVILEGES;"
# mysql -u root wp < wp.sql
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASSWORD';"

