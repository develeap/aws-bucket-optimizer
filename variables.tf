variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "source_bucket" {
  description = "Source bucket to optimize"
  type        = string
  default     = "gilad-optimizer-test-files-bucket"
}

variable "destination_bucket" {
  description = "Destination bucket to send inventory and access logs to"
  type        = string
  default     = "develeap-optimization-analyze-destination-bucket"
}

variable "aws_account_id" {
  description = "AWS account ID"
  type        = string
  default     = "006262944085"
}

variable "inventory_frequency" {
  description = "Inventory update frequency"
  type        = string
  default     = "Daily"
}

variable "modify_days" {
  description = "Modify days"
  type        = string
  default     = "30"
}

variable "access_days" {
  description = "Access days"
  type        = string
  default     = "30"
}

variable "lambda_function_name" {
  description = "lambda function name"
  type        = string
  default     = "bucket-optimizing-lambda"
}

variable "athena_database_name" {
    description = "Name of the database"
    type        = string
    default     = "dbdb"
}


variable "athena_table_name" {
    description = "Name of the table"
    type        = string
    default     = "testtest"
}

variable "cloudwatch_rule_name" {
    description = "Name of the rule"
    type        = string
    default     = "lambda_event_rule"
}

variable "cloudwatch_rule_description" {
    description = "Rule's description"
    type        = string
    default     = "Schedules periodically"
}


variable "cloudwatch_rule_schedule_expression" {
    description = "How often we want to schedule our function"
    type        = string
    default     = "rate(2 minutes)" 
}

variable "target_prefix" {
    description = "A prefix for all log object keys"
    type        = string
    default     = "log/"
}

variable "log_bucket_name" {
    description = "Name of the bucket for server access logs"
    type        = string
    default     = "bucket-optimize-logs"
}

variable "log_bucket_acl" {
    description = "Provides an S3 bucket ACL resource"
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
