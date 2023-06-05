resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH Connection"


  dynamic "ingress" {
    for_each = var.port_numbers_and_descriptions
    content {
      description = ingress.value.desc
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["${var.cidr_block_data}"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow_tls2"
  }
}