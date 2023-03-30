module "optimize" {
  source               = "./modules/optimize"
  destination_bucket   = var.destination_bucket
  source_bucket        = var.source_bucket
  source_bucket_arn    = data.aws_s3_bucket.source_bucket.arn
  aws_account_id       = var.aws_account_id
  modify_days      = var.modify_days
  access_days      = var.access_days
  lambda_function_name = var.lambda_function_name
  cloudwatch_rule_schedule_expression = var.cloudwatch_rule_schedule_expression
  cloudwatch_rule_name = var.cloudwatch_rule_name
  cloudwatch_rule_description = var.cloudwatch_rule_description
  account_id = data.aws_caller_identity.current
  athena_database_name = var.athena_database_name
  athena_table_name = var.athena_table_name
  region = var.region
  log_bucket_name = var.log_bucket_name
  target_prefix = var.target_prefix
  athena_queries_destination = var.athena_queries_destination
  key = var.key
  value = var.value

}

module "origin_resources" {
  source                 = "./modules/origin_resources"
  source_bucket          = var.source_bucket
  source_bucket_id       = data.aws_s3_bucket.source_bucket.id
  target_prefix = var.target_prefix
  log_bucket_name = var.log_bucket_name
  log_bucket_acl = var.log_bucket_acl
  key = var.key
  value = var.value
}
