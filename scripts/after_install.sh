#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

echo "Starting After Install"

# Copy new application files to the target directory
echo "Copying new application files..."
sudo cp -r /opt/codedeploy-agent/deployment-root/deployment-archive/* /var/www/html/ || true

# Set permissions for the application files (if needed)
echo "Setting permissions for application files..."
sudo chown -R www-data:www-data /var/www/html || true
sudo chmod -R 755 /var/www/html || true

# Restart the application service (if applicable)
echo "Starting application service..."
sudo service your-app-service start || true

echo "After Install completed"
