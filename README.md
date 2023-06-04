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

# Guide how to use script

1. Go to variables.prkvar.hcl, edit variables that you want to customize (ami name, initial system script, instance type etc.)
2. For inital system script prepare your bash script. If not - you have default nginx_docker_installation.sh script
3. In command line enter "packer init ."
4. After that, enter "packer build -var-file="variables.pkrvars.hcl .". Flag -var-file needed to define from which file Packer will read values for your variables. If you don't d  