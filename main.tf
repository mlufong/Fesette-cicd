provider "aws" {
    region = "us-west-2"
  
}


resource "aws_instance" "prod-ec2" {
    instance_type = var.prod_instance_type
    ami = var.ami_id
    subnet_id = var.subnet_id
    key_name = var.key_pair
    vpc_security_group_ids = var.security_group_ids

    tags = {
      name = "prod-ec2"
    }
}

resource "aws_instance" "dev-ec2" {
    instance_type = var.dev_instance_type
    ami = var.ami_id
    subnet_id = var.subnet_id
    key_name = var.key_pair
    vpc_security_group_ids = var.security_group_ids

    tags = {
      name = "dev-ec2"
    }
    
}