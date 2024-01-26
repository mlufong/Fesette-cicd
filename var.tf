variable "prod_instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"
}

variable "dev_instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.small"
}

variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type = string
    default = "ami-085648d85db272f29"
}

variable "key_pair" {
    description = "The key pair attached to instance"
    type = string
    default = "oregon-key-pairs"  
}

variable "subnet_id" {
    description = "ID of subnet where the instance is"
    type = string
    default = "subnet-0fc7916a77b764249"
}

variable "security_group_ids" {
    description = "list of security groups ID for the instance"
    type = list(string)
    default = [ "sg-08109b42c06266aa6" ]
  
}
