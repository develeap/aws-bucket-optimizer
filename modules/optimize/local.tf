data "aws_caller_identity" "current" {}

locals {

    arn_source_bucket = "arn:aws:s3:::${var.source_bucket}"
    arn_source_bucket_wildcard = "arn:aws:s3:::${var.source_bucket}/*"
    arn_destination_bucket = "arn:aws:s3:::${var.log_bucket_name}"
    arn_destination_bucket_logs = "arn:aws:s3:::${var.log_bucket_name}/${var.target_prefix}*" # target_prefix = example/
    arn_destination_bucket_output_queries = "arn:aws:s3:::${var.log_bucket_name}/${var.athena_queries_destination}/*"

    # I've used predetermined workgroup, that was created previously named primary
    arn_workgroup = "arn:aws:athena:${var.region}:${data.aws_caller_identity.current.account_id}:workgroup/primary"
    arn_catalog = "arn:aws:glue:${var.region}:${data.aws_caller_identity.current.account_id}:catalog"
    arn_database = "arn:aws:glue:${var.region}:${data.aws_caller_identity.current.account_id}:database/${var.athena_database_name}"
    arn_table = "arn:aws:glue:${var.region}:${data.aws_caller_identity.current.account_id}:table/${var.athena_database_name}/${var.athena_table_name}"
}

