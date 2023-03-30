module "lambda_function" {
  source                = "terraform-aws-modules/lambda/aws"
  function_name         = var.lambda_function_name
  description           = "Develeap bucket optimizer lambda"
  handler               = "optimizer_lambda.lambda_handler" 
  runtime               = "python3.8"
  timeout = 30
  attach_policy_statements = true
  policy_statements = {
    s3 = {
      effect    = "Allow",
      actions   = ["s3:PutObjectTagging",
                   "s3:ListBucket",
                   "s3:GetBucketLocation"]
      resources = [local.arn_source_bucket_wildcard, 
                   local.arn_source_bucket,
                   local.arn_destination_bucket] 
    },
    athena = {
      effect    = "Allow",
      actions   = ["athena:StartQueryExecution",
                   "athena:GetQueryExecution",
                   "athena:GetQueryResults",
                   "glue:GetTable"]
      resources = [local.arn_workgroup,
                   local.arn_catalog,
                   local.arn_database,
                   local.arn_table]
    },
    s3_logs = {
      effect    = "Allow",
      actions   = ["s3:*"]
      resources = [local.arn_destination_bucket_logs,
                   local.arn_destination_bucket_output_queries] 
    }
  }
  source_path           = "./scripts/optimizer_lambda.py" #DYNAMIC
  environment_variables = {
      MODIFY_DAYS   = var.modify_days
      BUCKET_NAME       = var.source_bucket
      ACCESS_DAYS       = var.access_days
      LOG_BUCKET_NAME = var.log_bucket_name
      OUTPUT_QUERIES = var.athena_queries_destination
      DATABASE_NAME = var.athena_database_name
      TABLE_NAME = var.athena_table_name
      KEY = var.key
      VALUE = var.value

  }
  
}
