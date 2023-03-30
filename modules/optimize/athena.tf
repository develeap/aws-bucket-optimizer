resource "aws_glue_catalog_database" "athena" {
  name = var.athena_database_name
}


resource "aws_glue_catalog_table" "s3_access_logs22" {
  name          = var.athena_table_name
  database_name = var.athena_database_name
  parameters = {
    "EXTERNAL"              = "TRUE"
    "classification"        = "S3 Access Logs"
    "comment"               = "Logs from S3 Server"
    
  }

  table_type = "EXTERNAL_TABLE"
  storage_descriptor {
    bucket_columns            = []
    compressed                = false
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"

    location                  = "s3://${var.log_bucket_name}/${var.target_prefix}" #DYNAMIC
    number_of_buckets         = -1
    
    output_format             = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"
    parameters                = {}
    stored_as_sub_directories = false

    columns {
      name = "bucketowner"
      type = "string"
      }
    columns {
      name = "bucket_name"
      type = "string"
      }
    columns {
      name = "requestdatetime"
      type = "string"
      }
    columns {
      name = "remoteip"
      type = "string"
      }
    columns {
      name = "requester"
      type = "string"
      }
    columns {
      name = "requestid"
      type = "string"
      }
    columns {
      name = "operation"
      type = "string"
      }
    columns {
      name = "key"
      type = "string"
      }
    columns {
      name = "request_uri"
      type = "string"
      }
    columns {
      name = "httpstatus"
      type = "string"
      }
    columns {
      name = "errorcode"
      type = "string"
      }
    columns {
      name = "bytessent"
      type = "bigint"
      }
    columns {
      name = "objectsize"
      type = "bigint"
      }
    columns {
      name = "totaltime"
      type = "string"
      }
    columns {
      name = "turnaroundtime"
      type = "string"
      }
    columns {
      name = "referrer"
      type = "string"
      }
    columns {
      name = "useragent"
      type = "string"
      }
    columns {
      name = "versionid"
      type = "string"
      }
    columns {
      name = "hostid"
      type = "string"
      }
    columns {
      name = "sigv"
      type = "string"
      }
    columns {
      name = "ciphersuite"
      type = "string"
      }
    columns {
      name = "authtype"
      type = "string"
      }
    columns {
      name = "endpoint"
      type = "string"
      }
    columns {
      name = "tlsversion"
      type = "string"
      }

    ser_de_info {
      parameters = {
        "serialization.format" = "1"
        "input.regex"="([^ ]*) ([^ ]*) \\[(.*?)\\] ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) (\"[^\"]*\"|-) (-|[0-9]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) (\"[^\"]*\"|-) ([^ ]*)(?: ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*) ([^ ]*))?.*$"
      }
      serialization_library = "org.apache.hadoop.hive.serde2.RegexSerDe"
    }
  }
}