variable "region" {
    description = "Region"
    type = string
}

variable "destination_bucket" {
    description = "Destination bucket to send inventory and access logs to"
    type        = string
}

variable "source_bucket" {
    description = "Source bucket to optimize"
    type        = string
}

variable "source_bucket_arn" {
    description = "Source bucket ARN"
    type        = string 
}

variable "aws_account_id" {
    description = "AWS account ID"
    type        = string
}

variable "modify_days" {
  description = "Modify days"
  type        = string
}

variable "access_days" {
  description = "Access days"
  type        = string
}

variable "lambda_function_name" {
    description = "lambda function name"
    type        = string
}

variable "account_id" {
    description = "Account ID"
    
}

variable "athena_database_name" {
    description = "Name of the database"
    type        = string
}


variable "athena_table_name" {
    description = "Name of the table"
    type        = string
}

variable "cloudwatch_rule_name" {
    description = "Name of the table"
    type        = string
}

variable "cloudwatch_rule_description" {
    description = "Name of the table"
    type        = string
}


variable "cloudwatch_rule_schedule_expression" {
    description = "Name of the table"
    type        = string
}

variable "log_bucket_name" {
    description = "Name of the bucket for server access logs"
    type        = string
}

variable "target_prefix" {
    description = "A prefix for all log object keys"
    type        = string
}

variable "athena_queries_destination" {
    description = "Name of the destination in S3 bucket for athena queries"
    type        = string
}

variable "key" {
    description = "Key for tagging"
    type        = string
}

variable "value" {
    description = "Value for tagging"
    type        = string
}



