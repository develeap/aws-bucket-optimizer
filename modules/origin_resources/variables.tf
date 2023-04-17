variable "source_bucket" {
    description = "Name of the Amazon S3 Source Bucket"
    type        = string
}

variable "source_bucket_id" {
    description = "ID of the Amazon S3 Source Bucket"
    type        = string 
}

variable "target_prefix" {
    description = "Prefix for all log object keys"
    type        = string
}

variable "log_bucket_name" {
    description = "Name of the bucket for server access logs"
    type        = string
}

variable "log_bucket_acl" {
    description = "S3 Bucket ACL resource"
    type        = string
}

variable "key" {
    description = "Key for tagging the object"
    type        = string
}

variable "value" {
    description = "Value for tagging the object"
    type        = string
}
