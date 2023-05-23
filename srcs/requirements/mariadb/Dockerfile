FROM debian:buster

RUN apt update && \
    apt install -y mariadb-server

ARG DBname THE_USER MARIADB_ROOT_PASSWORD

COPY ./script.sh /

COPY ./mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod 777 script.sh

RUN ./script.sh

ENTRYPOINT ["mysqld"]