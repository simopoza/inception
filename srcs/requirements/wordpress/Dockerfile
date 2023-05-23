FROM debian:buster

RUN apt update && \
    apt install -y php7.3-fpm php7.3-mysql mariadb-client curl


RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/wordpress

ARG DB_NAME \
    DB_USER \
    DB_PASSWORD \
    DB_HOST \
    AD_USER \
    AD_PASSWORD \
    email \
    WP_USER \
    WP_EMAIL \
    WP_PASSWORD

WORKDIR /

COPY ./script.sh /

RUN chmod 777 script.sh

ENTRYPOINT ["./script.sh"]

CMD ["php-fpm7.3", "-R", "-F"]
