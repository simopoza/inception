#!/bin/bash

wp core download --allow-root
cp wp-config-sample.php wp-config.php
# wp core config --dbname=${WP_NAME} --dbuser=${WP_USER} --dbpass=${WP_PASSWORD} --dbhost=${WP_HOST} --allow-root
wp core install --url=https://localhost --title="inception" --admin_user=${AD_USER} --admin_password=${AD_PASSWORD} --admin_email=${email} --skip-email --allow-root
wp user create ${WP_UR} ${WP_EMAIL} --role=author --user_pass=${WP_PW} --allow-root
exec "$@"