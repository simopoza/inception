FROM debian:buster

RUN apt update && apt install -y php7.3 php7.3-fpm php7.3-mysql mariadb-client curl

WORKDIR /var/www/html/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY script.sh ./

RUN chmod 777 ./script.sh && mkdir -p /run/php/

ENTRYPOINT [ "./script.sh" ]

CMD ["php-fpm7.3", "-R", "-F"]
