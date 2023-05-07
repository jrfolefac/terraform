resource "aws_security_group" "webtraffic" {
   name  = "Allow HTTPS"
    

  dynamic "ingress" {
      iterator = port
      for_each = var.ingressrules
      content {
      from_port = port.value
      to_port   = port.value
     protocol   = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
     }
   }
  
    dynamic "egress" {
      iterator = port
      for_each = var.egressrules
      content {
      from_port = port.value
      to_port   = port.value
     protocol   = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
    }
   }
}
