
# DOCKER INSTALL

[install.txt](./install.txt)

## JENKINS ##

-----

- Jenkins Documentation
[Jenkins Docs](https://jenkins.io/doc/)

- For installation of jenkins and mysql containers, centos, ansible, aws to use

[jenkins.sh](./jenkins.sh)

- Execution curl for job by http

[crumb.sh](./crumb.sh)


### Requirements
	
* Know docker and docker-compose
* Have knowledge in jenkins with ansible
* Account in AWS and basic knowledge
* Maven, Git and jenkinsfile



-----

# Jenkins Kubernetes HELM

[Helm Chart](https://artifacthub.io/packages/helm/jenkinsci/jenkins)

## Help Notes

NAME: jenkins-home
LAST DEPLOYED: Sun Oct 30 23:47:53 2022
NAMESPACE: default
STATUS: deployed
REVISION: 1
NOTES:

1. Get your 'admin' user password by running:

```shell
  kubectl exec --namespace default -it svc/jenkins-home -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo
```

2. Get the Jenkins URL to visit by running these commands in the same shell:

```shell
  echo http://127.0.0.1:8080
  kubectl --namespace default port-forward svc/jenkins-home 8082:8080
```

3. Login with the password from step 1 and the username: admin

4. Configure security realm and authorization strategy

5. Use Jenkins Configuration as Code by specifying configScripts in your values.yaml file, see documentation: 
 
[IAAS](http:///configuration-as-code)
 
[Repository](https://github.com/jenkinsci/configuration-as-code-plugin/tree/master/demos)


For more information on running Jenkins on Kubernetes, visit:

[Google Cloud Jenkins](https://cloud.google.com/solutions/jenkins-on-container-engine)


For more information about Jenkins Configuration as Code, visit:

[Project](https://jenkins.io/projects/jcasc/)


NOTE: Consider using a custom image with pre-installed plugins


## Local Host

```shell
google-chrome http://localhost:8082
```
