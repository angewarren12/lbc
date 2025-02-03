# Utiliser l'image officielle PHP avec Apache
FROM php:8.1-apache

# Installer les extensions PHP requises
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Copier les fichiers de ton projet
COPY . /var/www/html/

# Donner les bons droits
RUN chown -R www-data:www-data /var/www/html/

# Exposer le port 80 pour Apache
EXPOSE 80

# Lancer Apache
CMD ["apache2-foreground"]
