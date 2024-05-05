#!/bin/bash

# Install ModSecurity
sudo apt install libapache2-mod-security2 -y

# Enable ModSecurity
sudo ln -s /usr/share/modsecurity-crs /etc/modsecurity