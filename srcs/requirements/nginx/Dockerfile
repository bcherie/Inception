FROM	debian:buster
RUN		apt-get update -y && apt-get -y install nginx vim net-tools
RUN		apt-get -y install openssl
RUN		apt-get -y install vim
COPY	/conf/nginx.conf /etc/nginx/sites-available/default
#generation key and cert:
RUN openssl req -newkey rsa:2048 -nodes -x509 -days 365 \
	-subj "/C=RU/ST=Moscow/L=Moscow/O=bcherie/CN=bcherie.42.fr" \
	-keyout etc/ssl/key.key  \
	-out etc/ssl/cert.cert

RUN		chown -R www-data /var/www/*
RUN		chmod 777 /etc/ssl/*
EXPOSE	443
VOLUME	/var/www/wordpress

CMD		["nginx","-g","daemon off;"]
