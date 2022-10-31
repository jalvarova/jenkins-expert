#! /bin/bash

USER_JENKINS=$1
PWD_JENKINS=$2
SELECT_PARAMETER=$3

echo $USER_JENKINS : $PWD_JENKINS

crumb=$(curl -u "$USER_JENKINS:$PWD_JENKINS" -s 'http://jenkins-expert-javdev:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')

echo $crumb

if [ "${SELECT_PARAMETER}" == "param" ]; then
	curl -u "$USER_JENKINS:$PWD_JENKINS" -H "$crumb" -X POST  'http://jenkins-expert-javdev:8080/job/AWS_JENKINS/buildWithParameters?DB_HOST=db&DB_NAME=people&BUCKET_NAME=jenkins-walavo'
else 
	curl -u "$USER_JENKINS:$PWD_JENKINS" -H "$crumb" -X POST http://jenkins-expert-javdev:8080/job/JENKINS_ENVIROMENT/build?delay=0sec
fi
