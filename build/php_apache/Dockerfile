FROM php:5.5-apache

RUN apt-get update && apt-get install -y \
    && docker-php-ext-install mysqli

RUN a2enmod rewrite expires
