variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "aws_account_id" {
  description = "AWS account ID"
  type        = string
  default     = "006262944085"
}

variable "source_bucket" {
  description = "Name of the Amazon S3 Source Bucket"
  type        = string
  default     = "gilad-optimizer-test-files-bucket"
}

variable "modify_days" {
  description = "Arbitrary value for condition regarding modifying the object"
  type        = string
  default     = "30"
}

variable "access_days" {
  description = "Arbitrary value for condition regarding accessing the object"
  type        = string
  default     = "30"
}

variable "lambda_function_name" {
  description = "Name of the lambda function"
  type        = string
  default     = "bucket-optimizing-lambda"
}

variable "athena_database_name" {
    description = "Name of the athena database"
    type        = string
    default     = "dbdb"
}


variable "athena_table_name" {
    description = "Name of the athena table"
    type        = string
    default     = "testtest"
}

variable "cloudwatch_rule_name" {
    description = "Name of the cloudwatch rule"
    type        = string
    default     = "lambda_event_rule"
}

variable "cloudwatch_rule_description" {
    description = "Description of the cloudwatch rule"
    type        = string
    default     = "Schedules periodically"
}


variable "cloudwatch_rule_schedule_expression" {
    description = "Frequency of running the lambda function"
    type        = string
    default     = "rate(2 minutes)" 
}

variable "target_prefix" {
    description = "Prefix for all log object keys"
    type        = string
    default     = "log/"
}

variable "log_bucket_name" {
    description = "Name of the bucket for server access logs"
    type        = string
    default     = "bucket-optimize-logs"
}

variable "log_bucket_acl" {
    description = "S3 Bucket ACL resource"
    type        = string
    default     = "log-delivery-write"
}

variable "athena_queries_destination" {
    description = "Name of the destination in S3 bucket for athena queries"
    type        = string
    default     = "athena"
}

variable "key" {
    description = "Key for tagging the object"
    type        = string
    default     = "demo"
}

variable "value" {
    description = "Value for tagging the object"
    type        = string
    default     = "demo"
}
