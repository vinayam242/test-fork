#!/bin/bash
#use redhat/ubuntu server
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/rpm-stable/jenkins.repo
sudo yum upgrade -y 
# Add required dependencies for the jenkins package
sudo yum install fontconfig java-21-openjdk -y   # here we are installing java 21 version
sudo yum install jenkins -y
sudo systemctl daemon-reload
sudo service jenkins.service start
sudo yum install git -y    #installing git
