FROM debian:buster

RUN apt update && \
    apt install -y php7.3 php7.3-fpm php7.3-mysql mariadb-client curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html/

ARG AD_USER AD_PASSWORD email WP_UR WP_EMAIL WP_PW

WORKDIR /

COPY ./script.sh ./

RUN chmod 777 ./script.sh

RUN mkdir -p /run/php/

ENTRYPOINT [ "./script.sh" ]

CMD ["php-fpm7.3", "-R", "-F"]
