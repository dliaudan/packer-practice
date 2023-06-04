#defining plugin

packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.5"
      source = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name                    = var.name_of_ami
  ami_description             = "This source needs to build ami ubuntu with docker and containered nginx application" 
  instance_type               = var.instance_type
  source_ami                  = var.source_ami
  region                      = var.ami_region
  associate_public_ip_address = true
  ssh_username                = var.username
}

build {
  name  = "build-nginx"
  sources = ["source.amazon-ebs.ubuntu"]
  provisioner "shell" {
    script = "nginx_docker_installation.sh"
  }
}