FROM php:5-fpm

MAINTAINER Jonathan Johnson <jon.johnson@ucsf.edu>
RUN apt-get update
RUN pecl install apcu-4.0.11
RUN apt-get install libldap2-dev && ln -s /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/libldap.so && docker-php-ext-install ldap
RUN apt-get install libxml2-dev && docker-php-ext-install xml
RUN docker-php-ext-install mysqli pdo_mysql mbstring
