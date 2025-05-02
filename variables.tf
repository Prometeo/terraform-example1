variable "region" {
  description = "AWS region"
  type        = string
}

variable "ssh_sg_cidr_block" {
  description = "cdir allowed to connect through ssh"
  type        = string
}

variable "ami" {
    description = "AMI id"
    type        = string
}

variable "instance_type" {
    description = "Instance Type"
    type        = string
}

variable "key_name" {
    description = "ssh key name"
    type        = string
}

variable "ips" {
    description = "list of ips for ec2"
    type = list(string)
}

variable "ports" {
    description = "List of ports"
    type = list(number)
}

# variable "sg_cidr_block" {
#     description = "cidr for security group"
#     type        = string
# }

# variable "default_vpc" {
#     description = "Id of the default VPC"
#     type        = string
# }

# variable "subnets" {
#     description = "List of subnets used by resources"
#     type        = list(string)
# }
