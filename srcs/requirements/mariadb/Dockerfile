FROM	debian:buster
RUN		apt-get update -y && apt-get -y install mariadb-server curl vim net-tools

COPY	/conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN		chmod 444 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	/tools/start.sh /
EXPOSE	3306

RUN		chmod 755 /start.sh
ENTRYPOINT	["bash", "/start.sh"]
