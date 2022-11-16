<h1 align="center">Docker container deployment<h1> 
  
Deploying an application utilizing docker to create a container.

## Deployment Findings Link:
- Link to Deployment notes: https://github.com/pr57039n/Docker-Containerized-Application/blob/main/Deployment%205.odt
- Link to Deployment diagram: https://github.com/pr57039n/Docker-Containerized-Application/blob/main/Images/Deployment%20Diagram.png

### Purpose

  Prior to this deployment, I mainly had applications running on EC2 instances. As one could imagine, having an entire operating system as a base for an application can be heavy, or cause conflicts in pre-existing libraries that might be installed on a system. In this deployment I have introduced Docker to my pipeline to combat the possibility of configuration drift, by containerizing the application, I place the application in a contained environment with everything that is required for it to run, then run the container's environment. For my pipeline, I utilize multiple ec2 instances to combat the problem I encountered in my previous deployment where the Jenkins instance ran out of resources.
  
#### Instructions
  - Step 1 - Create Jenkins Instance
  It's expected for you to have a fully created Jenkins server. If you have not done so. Install Java Runtime environment, python3-venv, and python3-pip and follow the instructions on this webpage. https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/ 
  - Step 2 - Create Terraform Instance
  You have to install Terraform on an EC2, as well as install Java Runtime Environment on this instance. Instructions for installing Terraform can be found here. https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
  - Step 3 - Create Docker Instance
  On a third EC2 at this point, install Docker onto this EC2 as well as Java Runtime Environment. Instructions to install Docker can be found here https://docs.docker.com/engine/install/ubuntu/
  - Step 4 - Configure Jenkins
  Jenkins will need.
  1. Your AWS Access-key and AWS Secret-key; both stored as secret texts
  2. Your docker username and password; both stored as secret texts
  3. Your github personal access token
  4. An AWS ARN role in order to deploy properly using Terraform.
  5. To connect to the Terraform instance, and Docker instance; this will require you to have your AWS SSH token credentials, as well as the instance IP's when which you connect via agent node creation.
  - Step 5 - Configure Dockerfile
  I was unable to find out how to build an application without utilizing a dockerfile. In my case; I have the dockerfile update the python environment, then install git, clone the repository, use the repository as a working directory before installing requirements.txt and then running flask

