# Usa una imagen base de PHP con Apache
FROM php:8.1.12-apache
 
# Copia el código de la aplicación al directorio raíz del servidor web
COPY . /var/www/html/
 
# Instala extensiones adicionales de PHP si es necesario
RUN docker-php-ext-install mysqli pdo pdo_mysql
 
# Configura Apache
RUN a2enmod rewrite