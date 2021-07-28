FROM 	debian:buster
RUN		apt-get update -y && apt-get -y install mariadb-server curl vim net-tools
COPY	./my.cnf /etc/mysql/my.cnf
RUN		chmod 644 /etc/mysql/my.cnf
###
RUN		mkdir /var/run/mysqld
RUN		mkfifo /var/run/mysqld/mysqld.sock
#RUN     sed '/skip-networking/s/^/#/g' /etc/mysql/mariadb-server.cnf
COPY	./start.sh /
RUN		chmod -R 777 /start.sh
# RUN		mkdir /run/mysqld/
# RUN		chown mysql:mysql /run/mysqld/
# RUN		chmod -R 755 /run/mysqld/
# RUN		mkdir -p /var/lib/mysql
# RUN		chmod 777 /var/lib/*
EXPOSE	3306

#COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d
# CMD		mysqld_safe && tail -f /dev/null
#ENTRYPOINT ["mysqld"]
# ENTRYPOINT bash start.sh
RUN     chmod +x /start.sh
#RUN     chown mysql:mysql /var/run/mysqld
# RUN		/start.sh
# ENTRYPOINT [ "mysqld" ]
# CMD [ "-u root" ]
CMD /start.sh
# #/etc/init.d/mysql restart
