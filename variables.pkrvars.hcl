
name_of_ami           = "ubuntu-docker-nging-image"

instance_type         = "t3.micro"

source_ami            = "ami-0989fb15ce71ba39e"

ami_region            = "eu-north-1"

username              = "ubuntu"

initial_system_script = "nginx_docker_installation.sh"