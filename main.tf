resource "aws_kinesis_stream" "example" {
  name              = var.stream_name
  shard_count       = var.shard_count
  retention_period  = var.retention_period
  encryption_type   = var.encryption_type
  kms_key_id        = var.kms_key_id

  shard_level_metrics = var.shard_level_metrics

  stream_mode_details {
    stream_mode = var.stream_mode
  }

  enforce_consumer_deletion = var.enforce_consumer_deletion

  tags = var.tags

  timeouts {
    create = var.create_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}