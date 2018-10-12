# Dockerized development setup for Neos Flow
# Uses Debian, Apache and PHP7.2
FROM php:7.2-apache
LABEL maintainer="booooza@gmail.com"

# System dependencies
RUN apt-get update -qqy && \
    apt-get install -y \
        zip \
        unzip \
        git && \
    rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install pdo_mysql

# Enable PHP module
RUN a2enmod rewrite

# Copy apache config
COPY ops/neos/neos-flow-dev.conf /etc/apache2/conf-enabled/neos-flow.conf
COPY ops/neos/neos-flow-prod.conf /etc/apache2/conf-enabled/neos-flow.conf

# Make port 80 available
EXPOSE 80