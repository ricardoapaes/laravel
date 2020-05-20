FROM php:7.4-fpm
RUN apt update && apt install -y \
    mariadb-client
RUN docker-php-ext-install pdo pdo_mysql
EXPOSE 9000
CMD ["php-fpm"]