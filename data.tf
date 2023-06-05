data "aws_ami" "latest_ami_name" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }
}

data "vault_generic_secret" "aws_access_key" {
  path = "secret/aws_access"
}
