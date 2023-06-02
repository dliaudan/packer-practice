## packer-practice

# Purpose

This repo is created to show my skill in creating Amazon machine instances (AMI) for EC2 instances

In this repo presented:
* prk.hcl file which takes source from ubuntu ami and takes script from nginx_docker_installation script
* In bash script (nginx_docker_installation.sh) presented set of commands for consequently 
    1. installing docker 
    2. installing nginx 
    3. creating docker container with nginx
    4. including custom index.html where is written hostname

# Notes

To correctly show index.html from your ec2 instance you need to properly add to security group permission for 8080 port. Otherwise, request for this page will be denied