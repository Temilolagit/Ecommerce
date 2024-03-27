
FROM php:7.4-apache


RUN docker-php-ext-install mysqli

# Copy the application source code to /var/www/html/
COPY . /var/www/html/

# Update database connection strings to point to a Kubernetes service named mysql-service
# Assuming the application source code contains a configuration file like config.php
# Modify the appropriate lines in the configuration file to point to the mysql-service

# Expose port 80 to allow traffic to the web server
EXPOSE 80
