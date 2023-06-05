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
  address = "https://sample-cluster-public-vault-61ba8966.18057fed.z1.hashicorp.cloud:8200"
  token = "hvs.CAESIIZ0Nab2q8pJtzgPl3cgIWeYXkHMxV_9JQ6eqs12RSFPGicKImh2cy5SY3BuTmZvSmM1alVNYVdVaUlGTFltQW4uU1BiYnQQzwE"
}