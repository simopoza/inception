#!/bin/bash
service mysql start
mariadb -u root -e "create database IF NOT EXISTS ${DB_NAME};"
mariadb -u root -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
mariadb -u root -e "ALTER USER 'root'@'%' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
mariadb -u root -e "FLUSH PRIVILEGES;"