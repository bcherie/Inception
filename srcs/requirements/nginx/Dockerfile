FROM  debian:buster
RUN apt-get update -y && apt-get -y install nginx
COPY /Users/bcherie/Inception/srcs/requirements/nginx.conf /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

#there???
#generation key and cert:
RUN openssl req -newkey rsa:2048 -nodes -x509 -days 365 \
	-subj "/C=RU/ST=Moscow/L=Moscow/O=Bcherie/CN=localhost" \
	-keyout etc/ssl/key.key  \
	-out etc/ssl/cert.cert

RUN usermod -u 1000 www-data

EXPOSE 80

CMD ["nginx"]
