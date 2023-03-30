variable "source_bucket" {
    description = "Source bucket to optimize"
    type        = string
}

variable "source_bucket_id" {
    description = "Source bucket ID"
    type        = string 
}

variable "target_prefix" {
    description = "A prefix for all log object keys"
    type        = string
}

variable "log_bucket_name" {
    description = "A prefix for all log object keys"
    type        = string
}

variable "log_bucket_acl" {
    description = "A prefix for all log object keys"
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
