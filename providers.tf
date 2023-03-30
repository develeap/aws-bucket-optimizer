provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "bucket-optimizer-tf-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
