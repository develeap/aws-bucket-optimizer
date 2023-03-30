resource "aws_s3_bucket" "log_bucket" {
  bucket = var.log_bucket_name
}

resource "aws_s3_bucket_acl" "log_bucket_acl" {
  bucket = aws_s3_bucket.log_bucket.id
  acl    = var.log_bucket_acl
}

resource "aws_s3_bucket_logging" "example" {
  bucket = var.source_bucket_id

  target_bucket = aws_s3_bucket.log_bucket.id
  target_prefix = var.target_prefix
}