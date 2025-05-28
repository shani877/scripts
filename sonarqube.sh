sudo apt install docker.io -y
sudo systemctl enable --now docker
sudo docker run -d -p 9000:9000 sonarqube:lts-community
sudo docker images
sudo docker ps
# Access it-  IP:9000
# Note: Open port 9000 in your security group.
