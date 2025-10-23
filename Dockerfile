FROM debian:trixie
WORKDIR /var/www/html
RUN apt update && apt upgrade -y \
    && apt install -y php apache2 \
    && rm -rf /var/www/html/*
COPY . /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]