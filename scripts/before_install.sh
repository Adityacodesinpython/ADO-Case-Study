#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

echo "Starting Before Install"

# Stop the existing application service (if applicable)
echo "Stopping existing application service..."
sudo service your-app-service stop || true

# Backup current application files (if applicable)
echo "Backing up current application files..."
sudo cp -r /var/www/html /var/www/html_backup_$(date +%F) || true

# Clear previous application files
echo "Cleaning up previous application files..."
sudo rm -rf /var/www/html/* || true

echo "Before Install completed"
