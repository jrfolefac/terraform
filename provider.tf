terraform {
  required_version = "~> 0.14"
  required_provider {
     aws = "hashicop/aws"
     version = "~> 3.0"                  
    }
} 

provider "aws" {
   profile = "default"   $HOME/.aws/credentials
   region = "var.aws_region"
}
