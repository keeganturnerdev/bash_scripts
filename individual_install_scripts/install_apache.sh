#!/bin/bash

# Install Apache web server
sudo apt install apache2 -y

# Start and enable Apache service
sudo systemctl start apache2
sudo systemctl enable apache2

# This will install the Apache Web server