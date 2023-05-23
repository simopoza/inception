#!/bin/bash
service mysql start
mysql -u root -e "create database ${DB_NAME};"
mysql -u root -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -u root -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO ${DB_USER}@% IDENTIFIED BY '${DB_PASSWORD}';"
mysql -u root -e "ALTER USER 'root'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -u root -e "FLUSH PRIVILEGES;"