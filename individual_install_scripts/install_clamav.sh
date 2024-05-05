#!/bin/bash

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