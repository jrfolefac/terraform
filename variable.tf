variable "aws_region"{
default = "us-east-2"
type = string
}

variable "my_ami"{
default = "ami-06c4532923d4ba1ec"
type = string
}

variable "my_instance" {
description = "EC2 Instance Type"
type = map(string)
   default = {
   "dev" = "t2.micro"
   "qa"  = "t2.small"
   "prod" = "t3.large"
   }
}

variable "my_tag" {
default = "class25"
type = string
}

variable "my_key" {
default = "juicy"
type = string
}

variable "ingressrules"{
     type = list(number)
     default = [80,8080,443]
    }
   
      variable "egressrules"{
     type = list(number)
     default = [80,8080,53,443,3606]
    }
