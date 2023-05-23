FROM debian:buster

RUN apt update && \
    apt install -y nginx

COPY ./certs/ .

COPY ./default.conf /etc/nginx/conf.d/nginx.conf

CMD ["nginx", "-g", "daemon off;"]