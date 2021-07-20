FROM  debian:buster
RUN apt-get update -y && apt-get -y install nginx
RUN apt-get -y install openssl
RUN apt-get -y install vim
COPY ./nginx.conf /etc/nginx/sites-available/default
#RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

#there???
#generation key and cert:
RUN openssl req -newkey rsa:2048 -nodes -x509 -days 365 \
	-subj "/C=RU/ST=Moscow/L=Moscow/O=Bcherie/CN=localhost" \
	-keyout etc/ssl/key.key  \
	-out etc/ssl/cert.cert
#RUN usermod -u 1000 www-data
RUN chown -R www-data /var/www/*
# RUN chmod 777 -R /var/www/*
RUN chmod 777 /etc/ssl/*
#RUN chmod -R 777 /var/www/html/*

EXPOSE 443
VOLUME /var/www/wordpress

CMD ["nginx","-g","daemon off;"]
