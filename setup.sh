#!/bin/bash

# Update the system
sudo apt update && sudo apt upgrade -y

# Install Nginx
sudo apt install nginx -y

# Enable UFW and allow necessary ports
sudo ufw allow 'OpenSSH'
sudo ufw allow 'Nginx Full'
sudo ufw --force enable

# Install Certbot for SSL
sudo apt install certbot python3-certbot-nginx -y

echo "✅ EC2 setup is complete."
