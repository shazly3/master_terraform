#!/bin/bash
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key 
sudo yum upgrade 
# Add required dependencies for the jenkins package
sudo yum install fontconfig -y
sudo yum install java-17-amazon-corretto-headless -y
sudo yum install jenkins -y
#start jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo yum install git -y