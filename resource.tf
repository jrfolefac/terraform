
resource "aws_instance" "class25" {
  ami = var.my_ami  # data.aws_ami.ubuntu.id
  instance_type = var.my_instance["dev"]
 #user_data = file("${path.module}/app1-intstall.sh" 
  key_name =  var.my_key
  count = 2


   tags = {
     Name = var.my_tag
   }
}

