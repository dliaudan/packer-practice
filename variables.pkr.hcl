variable "name_of_ami" {
    description = "Define name of AMI"  
    type        = string
    default     = "Default AMI name"
}

variable "instance_type" {
    description = "Define instance type"
    type        = string
    default     = "t3.micro"
}

variable "source_ami" {
    description = "Define source ami from which you will build your custom AMI. By default, it is an Ubuntu"
    type        = string
    default     = "ami-0989fb15ce71ba39e"

}

variable "ami_region" {
    description = "Define region where your AMI will be stored, by default it is eu-north-1"
    type        = string
    default     = "eu-north-1"
}

variable "username" {
    description = "Define username of the AMI. By default, it is Ubuntu"
    type        = string
    default     = "ubuntu"
}

variable "initial_system_script" {
    description = "Define initial bash script that will install additional tools and utilities such as docker, nginx, aws-cli etc."
    type        = string
    default     = "nginx_docker_installation.sh"
}