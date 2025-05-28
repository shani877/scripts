sudo apt update
install docker
sudo usermod -aG docker $USER
newgrp docker
docker run -d -p 8081:8081 sonatype/nexus3
sleep 5
#exec in container and find password
#docker exec -it <container ID> /bin/bash
#cat /opt/sonatype/sonatype-work/nexus3

#ip:8081
#username: admin
