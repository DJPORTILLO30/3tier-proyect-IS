terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
     mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
  }
}

provider "aws" {
  region = local.aws.region
  shared_credentials_files = ["~/.aws/credentials"]
  profile = "terraform-dp"
}