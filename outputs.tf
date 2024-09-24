output "kinesis_stream_id" {
  description = "The unique Stream ID."
  value       = aws_kinesis_stream.example.id
}

output "kinesis_stream_arn" {
  description = "The ARN of the Kinesis Stream."
  value       = aws_kinesis_stream.example.arn
}

output "kinesis_stream_name" {
  description = "The name of the Kinesis Stream."
  value       = aws_kinesis_stream.example.name
}

output "kinesis_stream_shard_count" {
  description = "The number of shards for the Kinesis Stream."
  value       = aws_kinesis_stream.example.shard_count
}