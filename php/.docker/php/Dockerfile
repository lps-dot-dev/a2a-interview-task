FROM php:8.3-fpm

# Arguments defined in docker-compose.yml
ARG user
ARG uid

# Latest release
COPY --from=composer/composer:latest-bin /composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN useradd -G www-data -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Set working directory
WORKDIR /var/www

USER $user