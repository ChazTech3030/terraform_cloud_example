# output "public_server_001" {
#   value = aws_instance.demo_server[*].public_ip
# }
# output "security_group_id" {
#   value = aws_security_group.allow_ssh.id
# }
# output "name_conversions" {
#   value = [for name in var.list_of_names : "${upper(name)} is present"]
# }
output "secret_info" {
  value = data.vault_generic_secret.aws_access_key
  sensitive = true
}