#! /bin/bash

#permision file jenkins
sudo chmod 777 -R jenkins && cd jenkins

#create container jenkins with docker-compose
docker-compose up -d 

sleep 10

docker-compose logs
#get secret key

echo "Secret Key : "
docker exec -it  jenkins bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"
	