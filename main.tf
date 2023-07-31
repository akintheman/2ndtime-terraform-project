# configure aws provider
provider "aws" {
  region = "us-east-1"
  profile = "terraform-user"
}

# stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "akintheadmin-terraform-remote-state"
    key    = "terraform.tfstate.dev1"
    region = "us-east-1"
  }
}