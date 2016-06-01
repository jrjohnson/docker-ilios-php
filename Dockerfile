FROM php:5-fpm

MAINTAINER Jonathan Johnson <jon.johnson@ucsf.edu>
COPY config/php.ini /usr/local/etc/php/
RUN apt-get update && apt-get install -y libmemcached-dev \
    && pecl install memcached \
    && docker-php-ext-enable memcached
