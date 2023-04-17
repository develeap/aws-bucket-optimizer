variable "region" {
    description = "AWS Region"
    type = string
}

variable "source_bucket" {
    description = "Name of the Amazon S3 Source Bucket"
    type        = string
}

variable "source_bucket_arn" {
    description = "ARN of the Amazon S3 Source Bucket"
    type        = string 
}

variable "aws_account_id" {
    description = "AWS account ID"
    type        = string
}

variable "modify_days" {
  description = "Arbitrary value for condition regarding modifying the object"
  type        = string
}

variable "access_days" {
  description = "Arbitrary value for condition regarding accessing the object"
  type        = string
}

variable "lambda_function_name" {
    description = "Name of the lambda function"
    type        = string
}

variable "account_id" {
    description = "Account ID"  
}

variable "athena_database_name" {
    description = "Name of the athena database"
    type        = string
}


variable "athena_table_name" {
    description = "Name of the athena table"
    type        = string
}

variable "cloudwatch_rule_name" {
    description = "Name of the cloudwatch rule"
    type        = string
}

variable "cloudwatch_rule_description" {
    description = "Description of the cloudwatch rule"
    type        = string
}


variable "cloudwatch_rule_schedule_expression" {
    description = "Frequency of running the lambda function"
    type        = string
}

variable "log_bucket_name" {
    description = "Name of the bucket for server access logs"
    type        = string
}

variable "target_prefix" {
    description = "Prefix for all log object keys"
    type        = string
}

variable "athena_queries_destination" {
    description = "Name of the destination in S3 bucket for athena queries"
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



