FROM php:8.1.18-apache as php
COPY ./Babonz.php /var/www/html
RUN chown -R www-data:www-data /var/www/html \
  && chmod -R 754 /var/www/html \
  && find /var/www/html -type d -exec chmod g+s {} \;
EXPOSE 80
RUN apt update -y && apt upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

FROM mysql:latest as db
COPY redlock-db.sql /docker-entrypoint-initdb.d/

FROM jenkins/jenkins:latest