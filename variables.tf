# -------------- PROVIDER VARIABLES ------------------------------------------------------
# variable "aws_region" {
#   description = "The AWS region to create the Kinesis stream in."
#   type        = string
#   default     = "us-west-2"
# }

# variable "aws_access_key"{
#   description = "The AWS access key."
#   type        = string
# }

# variable "aws_secret_key"{
#   description = "The AWS secret key."
#   type        = string
# }

# -------------- KINESIS VARIABLES -------------------------------------------------------
variable "stream_name" {
  description = "The name of the Kinesis stream."
  type        = string
}

variable "shard_count" {
  description = "The number of shards for the stream."
  type        = number
  default     = 1
}

variable "retention_period" {
  description = "The retention period for the stream, in hours."
  type        = number
  default     = 24
}

variable "encryption_type" {
  description = "The encryption type for the stream (NONE or KMS)."
  type        = string
  default     = "NONE"
}

variable "kms_key_id" {
  description = "The KMS key to use for stream encryption."
  type        = string
  default     = null
}

variable "shard_level_metrics" {
  description = "A list of shard-level metrics to enable for the stream."
  type        = list(string)
  default     = []
}

variable "stream_mode" {
  description = "The capacity mode of the stream (PROVISIONED or ON_DEMAND)."
  type        = string
  default     = "PROVISIONED"
}

variable "enforce_consumer_deletion" {
  description = "Whether to enforce consumer deletion before stream destruction."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the stream."
  type        = map(string)
  default     = {}
}

variable "create_timeout" {
  description = "Timeout for creating the stream."
  type        = string
  default     = "5m"
}

variable "update_timeout" {
  description = "Timeout for updating the stream."
  type        = string
  default     = "120m"
}

variable "delete_timeout" {
  description = "Timeout for deleting the stream."
  type        = string
  default     = "120m"
}