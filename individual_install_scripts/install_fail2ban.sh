#!/bin/bash

# Install Fail2Ban
sudo apt install fail2ban -y

# Configure Fail2Ban
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

# Restart Fail2Ban service
sudo systemctl restart fail2ban