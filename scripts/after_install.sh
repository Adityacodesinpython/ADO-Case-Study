#!/bin/bash
echo "Starting After Install"
sudo cp -r /opt/codedeploy-agent/deployment-root/*/deployment-archive/* /var/www/html/
sudo chmod -R 755 /var/www/html
sudo chown -R apache:apache /var/www/html
sudo systemctl restart httpd
echo "After Install completed"
