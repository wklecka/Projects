#!/bin/bash

# Update package cache 
sudo apt-get update

# Download Docker script if it doesn't exist
if [ ! -f /home/pi/get-docker.sh ]; then
	curl -fsSL https://get.docker.com -o /home/pi/get-docker.sh 
fi

# Install Docker if not already installed
if [ ! -f /usr/bin/docker ]; then
    sh /home/pi/get-docker.sh
fi

# Add 'pi' user to the 'docker' group
sudo usermod -aG docker pi

# Unmask the Docker service
sudo systemctl unmask docker

# Fix persmissions for Docker socket
sudo chmod 666 /var/run/docker.sock

# Install docker-compose if it doesn't exist
if [ ! -f /usr/local/bin/docker-compose-plugin ]; then
    sudo apt install docker-compose-plugin
fi

# Start Docker service
sudo systemctl start docker
