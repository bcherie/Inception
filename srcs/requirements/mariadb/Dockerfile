FROM 	debian:buster
RUN		apt-get update -y && apt-get -y install mariadb-server
COPY	./my.cnf /etc/mysql/my.cnf
COPY	./start.sh ./
EXPOSE	3306
#COPY 	./requirements/mariadb/config.inc.php /var/www/html/phpmyadmin
#COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d
#CMD		mysqld_safe && tail -f /dev/null
#ENTRYPOINT [ "mysqld" ]
ENTRYPOINT service mysql start && /bin/bash
