FROM php:8.2-apache
RUN a2enmod rewrite
COPY apache.conf /etc/apache2/conf-available/custom.conf
RUN a2enconf custom
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html/
