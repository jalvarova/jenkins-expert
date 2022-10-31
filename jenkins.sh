#! /bin/bash

#delete jenkins container
#permision file jenkins

cd jenkins

if [ -f /jenkins_home/ ]; then
    mkdir jenkins_home && chmod 777 -R .
else
     echo "archivo ya existe"
fi

sleep 3
#create container jenkins with docker-compose
docker-compose up -d 

sleep 10

docker-compose logs
#get secret key

echo "Secret Key : "
if [ -f /var/jenkins_home/secrets/initialAdminPassword ]; then 

	docker exec -it  jenkins bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"
else
	echo "el archivo ya fue usado"
fi	
