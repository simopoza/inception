#!/bin/bash
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
wp core download --allow-root

# wp core config --dbname=poza --dbuser=mannahri --dbpass=simopoza12345 --dbhost=mariadb --allow-root

# wp core install --url=https://localhost --title="inception" --admin_user=ahmad --admin_password=onepieceisgoat123 --admin_email=mohammedannahri18@gmail.com  --skip-email --allow-root

# wp user create mohammed mannahri@student.1337.ma --role=author --user_pass=dimadimaraja123 --allow-root

wp core config --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${MARIADB_ROOT_PASSWORD} --dbhost=${DB_HOST} --allow-root

wp core install --url=https://localhost --title="inception" --admin_user=${AD_USER} --admin_password=${AD_PASSWORD} --admin_email=${email}  --skip-email --allow-root

wp user create ${WP_UR} ${WP_EMAIL} --role=author --user_pass=${WP_PW} --allow-root

exec "$@"