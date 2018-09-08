# Development setup for Neos Flow
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

# PHP dependencies
RUN a2enmod rewrite

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && ln -s $(composer config --global home) /root/composer
ENV PATH $PATH:/root/composer/vendor/bin

# Install neos flow
RUN composer create-project --keep-vcs neos/flow-base-distribution /var/www/html
COPY ./neos-flow-dev.conf /etc/apache2/conf-enabled/neos-flow.conf
COPY ./neos-flow-prod.conf /etc/apache2/conf-enabled/neos-flow.conf

# Make port 80 available
EXPOSE 80