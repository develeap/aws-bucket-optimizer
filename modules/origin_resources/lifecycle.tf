resource "aws_s3_bucket_lifecycle_configuration" "example" {
  bucket = var.source_bucket_id

  rule {
    id = "optimv2"

    filter {
      tag {
        key   = var.key
        value = var.value
      }
    }

    status = "Enabled"

     transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }
  }
}
