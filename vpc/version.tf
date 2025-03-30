terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "sk-wk7-terraformstatebucket"
    key    = "dev.terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
provider "aws" {
  region = "us-east-1"
}