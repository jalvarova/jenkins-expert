#! /bin/bash

#delete jenkins container
#permision file jenkins
cd jenkins && mkdir jenkins_home && chmod 777 -R .

sleep 3
#create container jenkins with docker-compose
docker-compose up -d 

sleep 10

docker-compose logs
#get secret key

echo "Secret Key : "
docker exec -it  jenkins bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"
	
