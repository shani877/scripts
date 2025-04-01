
#!/bin/bash
# Script to install Docker on an EC2 instance and configure permissions

# Update the package list
sudo apt-get update -y

# Install Docker
sudo apt-get install docker.io -y


# Start Docker service to apply changes
sudo systemctl restart docker
sudo sytemctl enable docker
sudo systemctl status docker
docker -v

