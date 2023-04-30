variable "aws_region"{
default = "us-east-2"
type = string
}

variable "my_ami"{
default = "ami-06c4532923d4ba1ec"
type = string
}

variable "my_instance" {
default = "t2.micro"
description = "EC2 Instance Type"
type = string
}

variable "my_tag" {
default = "class25"
type = string
}

variable "my_key" {
default = "juicy"
type = string
}
