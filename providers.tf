terraform {
  # cloud {
  #   organization = "techtalent"

  #   workspaces {
  #     name = "terraform_cloud_example"
  #   }
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.1"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  access_key = data.vault_generic_secret.aws_access_key.data["access_key"]
  secret_key = data.vault_generic_secret.aws_access_key.data["secret_access_key"]
}

provider "vault" {
  address = var.vault_address
  token = var.vault_token
}
