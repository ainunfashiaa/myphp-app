FROM php:8.2-apache

# Copy file aplikasi PHP ke dalam container
COPY index.php /var/www/html/

# Atur permission agar file bisa diakses oleh Apache
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 agar bisa diakses dari luar
EXPOSE 80

# Jalankan Apache di foreground
CMD ["apache2-foreground"]
