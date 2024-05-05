#!/bin/bash

# Update package lists
sudo apt update -y && sudo apt dist-upgrade -y

# Install ClamAV and ClamAV daemon
sudo apt install clamav clamav-daemon -y

# Stop ClamAV service
sudo systemctl stop clamav-freshclam
sudo systemctl stop clamav-daemon

# Update freshclam
sudo freshclam

# Enable ClamAV service
sudo systemctl start clamav-freshclam
sudo systemctl start clamav-daemon
sudo systemctl enable clamav-freshclam
sudo systemctl enable clamav-daemon

# Install Fail2Ban
sudo apt install fail2ban -y

# Configure Fail2Ban
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

# Restart Fail2Ban service
sudo systemctl restart fail2ban

# Install Docker
sudo apt install docker.io -y docker-compose -y

# Start Docker service
sudo systemctl start docker

# Enable Docker service on boot
sudo systemctl enable docker

# Verify Docker installation
sudo docker run hello-world

# Install Apache web server
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

# Install PHP 8.1
sudo apt install php8.1 -y
sudo apt install php libapache2-mod-php php-mysql
sudo apt install php-zip php-dom php-xmlwriter php-xmlreader php-mbstring php-gd php-simplexml php-curl

# Install ModSecurity
sudo apt install libapache2-mod-security2 -y

# Enable ModSecurity
sudo ln -s /usr/share/modsecurity-crs /etc/modsecurity

# Restart Apache
sudo systemctl restart apache2

# Update package lists
sudo apt update -y && sudo apt dist-upgrade -y 