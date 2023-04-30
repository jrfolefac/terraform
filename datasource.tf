data sources

data "aws_ami" "ubuntu" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.0.20230419.0-kernel-6.1-x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

   filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
