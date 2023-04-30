resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "dev ssh"
  

  ingress = 
   {
    description      = "allow port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   }

  egress =
  {
   description      = "allow all outbound"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "vpc-ssh"
  }
}
