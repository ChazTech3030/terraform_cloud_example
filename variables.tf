variable "cidr_block_data"{}

variable "ec2_size"{}

variable "tag_names" {
  type = list
  default = [
    "development",
    "production"
  ]
}

variable "is_test_env" {
  type = string
  description = "Is this a test environment? (yes/no)"
}

variable "list_ami_values" {
  type = list
  default = [
    "test_env_001",
    "test_env_002",
    "test_env_003"
  ]
}

variable "port_numbers_for_web_server" {
  type = list
  default = [
    22,
    80,
    443,
    8080,
    9999
  ]
}

variable "port_numbers_and_descriptions" {
  type = list

  default = [
    {"port" = 22, "desc" = "SSH access"},
    {"port" = 80, "desc" = "unsecure http access"},
    {"port" = 443, "desc" = "secure http access"}
  ]
}

variable "list_of_names" {
  type = list(string)
  default = [
    "Chester",
    "Andrew",
    "Eunjung",
    "Sarah",
    "Daniel"
  ]
}

variable "instance_size" {
  type = map(string)
  default = {
    default = "t1.micro"
    dev = "t2.micro"
    prod = "t2.large"
  }
}