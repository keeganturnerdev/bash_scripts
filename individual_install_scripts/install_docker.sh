#!/bin/bash

# Install Docker and Docker Compose
sudo apt install docker.io -y docker-compose -y

# Start Docker service
sudo systemctl start docker

# Enable Docker service on boot
sudo systemctl enable docker

# Verify Docker installation
sudo docker run hello-world