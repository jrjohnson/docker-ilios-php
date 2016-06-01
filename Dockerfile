FROM php:5-fpm

MAINTAINER Jonathan Johnson <jon.johnson@ucsf.edu>
COPY config/php.ini /usr/local/etc/php/
RUN pecl install apcu-4.0.11
RUN docker-php-ext-install -j$(nproc) mysql
