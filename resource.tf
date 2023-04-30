
resource "aws_instance" "class25" {
  ami = var.my_ami
  instance_type = var.my_instance
  key_name =  "juicy"


   tags = {
     Name = var.my_tag
   }
}
