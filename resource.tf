
resource "aws_instance" "class25" {
  ami = var.my_ami  # data.aws_ami.ubuntu.id
  instance_type = var.my_instance
#vpc_security_group_ids = [ aws_security_group_vpc-ssh_id, aws_security_group_vpc-web-id ]
  key_name =  "juicy"


   tags = {
     Name = var.my_tag
   }
}

