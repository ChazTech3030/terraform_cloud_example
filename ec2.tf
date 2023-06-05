# resource "aws_instance" "demo_server" {
#   ami                    = "ami-04f7efe62f419d9f5"
#   instance_type          = "t2.micro"
#   vpc_security_group_ids = [aws_security_group.allow_ssh.id]
 
#   key_name = "ssh_access"

#   provisioner "remote-exec" {
#     connection {
#       agent = false
#       type = "ssh"
#       user = "ec2-user"
#       private_key = file("C:\\Users\\masha\\.ssh\\ssh_access.pem")
#       host = self.public_ip
#     }
#     inline = [
#       "echo 'this is some text on the remote machine exec' >> anyoldfile.txt",
#       "echo 'another line of text' >> anyoldfile.txt"
#     ]
#   }

# }
resource "aws_instance" "demo_server" {
  ami                    = "ami-04f7efe62f419d9f5"
  instance_type          = "t2.micro"
}
  # for_each = {
  #   test_deployment = "t2.micro"
  #   live_deployment = "t2.large"
  #   live_deployment2 = "t2.large"
  # }

  # instance_type = each.value
  # tags = {
  #   # Name = (var.is_test_env == true ? "Test_EC2" : "Prod_EC2")
  #   Name = each.key
  # }