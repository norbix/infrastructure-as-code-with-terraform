terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=3.71.0"
    }
  }
}

provider "aws" {
  access_key = "REPLACE"
  secret_key = "REPLACE"

  token = ""

  region     = "eu-west-2"
}
