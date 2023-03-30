data "aws_s3_bucket" "source_bucket" {
  bucket = var.source_bucket
}

data "aws_caller_identity" "current" {}