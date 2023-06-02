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
  ami_name                    = "nginx-ami"
  ami_description             = "This source needs to build ami ubuntu with docker and containered nginx application" 
  instance_type               = "t3.micro"
  source_ami                  = "ami-0989fb15ce71ba39e"
  region                      = "eu-north-1"
  associate_public_ip_address = true
  ssh_username = "ubuntu"
}

build {
  name  = "build-nginx"
  sources = ["source.amazon-ebs.ubuntu"]
  provisioner "shell" {
    script = "nginx_docker_installation.sh"
  }
}