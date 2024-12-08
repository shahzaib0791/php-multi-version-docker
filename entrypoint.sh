#!/bin/bash

# Set Apache environment variables explicitly
export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data
export APACHE_PID_FILE=/var/run/apache2/apache2.pid
export APACHE_RUN_DIR=/var/run/apache2
export APACHE_LOCK_DIR=/var/lock/apache2
export APACHE_LOG_DIR=/var/log/apache2

# Create the necessary directories if they don't exist
mkdir -p /var/run/apache2 /var/lock/apache2 /var/log/apache2
chown -R www-data:www-data /var/run/apache2 /var/lock/apache2 /var/log/apache2

# Enable all available Apache sites
for conf in /etc/apache2/sites-available/*.conf; do
  if [ -f "$conf" ]; then
    # Enable the site configuration if it exists
    a2ensite "$(basename "$conf")"
  fi
done

# Enable the rewrite module
a2enmod rewrite

# Reload Apache to apply changes
service apache2 reload

# Start Apache in the foreground
exec apache2 -D FOREGROUND
