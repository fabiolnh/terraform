provider "aws" {
  region = "sa-east-1"
}

terraform {
  backend "s3" {
    key    = "test/test.tfstate"
    region = "sa-east-1"
  }
}