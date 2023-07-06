# packer-practice

## Purpose

This repo is created to show my skill in creating Amazon machine instances (AMI) for EC2 instances.

In this repo presented:
* `.prk.hcl` file which takes source from ubuntu ami and takes the script from nginx_docker_installation script
* In bash script `nginx_docker_installation.sh` presented a set of commands for consequently 
    1. installing docker 
    2. installing nginx 
    3. creating a docker container with nginx
    4. including custom `index.html` where is written hostname

## Guide how to use the script

1. Go to `variables.prkvar.hcl`, edit variables that you want to customize (ami name, initial system script, instance type etc.)
2. For initial system script prepare your bash script. If not - you have default `nginx_docker_installation.sh script`
3. In the command line enter `packer init .`
4. After that, enter `packer build -var-file="variables.pkrvars.hcl .`. Flag `-var-file` needs to define from which file Packer will read values for your variables.

## Note

To correctly show `index.html` from your ec2 instance you need to properly add to security group or ACL on VPC permission for 8080 port (you may choose another port but instead you need to edit `nginx_docker_installation.sh`). Otherwise, the request for this page will be denied.
