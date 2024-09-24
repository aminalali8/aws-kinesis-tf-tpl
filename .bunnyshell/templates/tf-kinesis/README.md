Here’s a `README.md` file for the Bunnyshell template using the Terraform configuration for AWS Kinesis:

---

# AWS Kinesis Terraform Template (Bunnyshell)

This template provisions an AWS Kinesis Data Stream using Terraform on Bunnyshell. It automates the deployment of an AWS Kinesis stream with configurable parameters for shards, retention period, encryption, and more.

## Requirements

Before deploying this template, ensure you have the following environment variables set:

- `AWS_ACCESS_KEY_ID`: Your AWS access key ID.
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret access key.
- `AWS_DEFAULT_REGION`: The AWS region where the Kinesis stream will be created.

These environment variables are required to authenticate with AWS and provision the resources.

## Template Configuration

This template is configured through the following variables in `Bunnyshell YAML Configuration`:

- **stream_name**: A unique name for your Kinesis stream, auto-generated with the environment’s unique identifier.
- **shard_count**: Number of shards for the stream.
- **retention_period**: The data retention period for the stream (in hours).
- **encryption_type**: The type of encryption to use (either `NONE` or `KMS`).
- **kms_key_id**: The KMS key ID or alias for encryption. Set to `null` if encryption is not required.
- **shard_level_metrics**: List of shard-level CloudWatch metrics to enable for the stream.
- **stream_mode**: The capacity mode of the stream (`PROVISIONED` or `ON_DEMAND`).
- **enforce_consumer_deletion**: Boolean indicating whether to enforce consumer deregistration before deleting the stream.
- **create_timeout**: Timeout duration for creating the Kinesis stream.
- **update_timeout**: Timeout duration for updating the Kinesis stream.
- **delete_timeout**: Timeout duration for deleting the Kinesis stream.

## Usage

### 1. Deploy the Environment

1. Clone this repository and ensure all necessary environment variables are set in Bunnyshell.
2. Customize the template variables in the `Bunnyshell YAML Configuration` to suit your use case.
3. Deploy the environment using Bunnyshell's Terraform runner.

During deployment, the following steps are automatically executed:
- A `variables.tfvars` file is dynamically created with the provided template variables.
- Terraform initializes and applies the configuration, provisioning the AWS Kinesis stream.

### 2. Destroy the Environment

If you wish to destroy the Kinesis stream and related resources:
- Bunnyshell will create the appropriate `variables.tfvars` file and run the `terraform destroy` command to clean up resources.

### Example Terraform Configuration

The Terraform script automatically generated during deployment will look like this:

```hcl
stream_name           = "kinesis-stream-unique-id"
shard_count           = 1
retention_period      = 24
encryption_type       = "NONE"
kms_key_id            = null
shard_level_metrics   = ["IncomingBytes", "OutgoingBytes"]
stream_mode           = "PROVISIONED"
enforce_consumer_deletion = false
create_timeout   = "5m"
update_timeout   = "5m"
delete_timeout   = "5m"
```

## Bunnyshell Components

- **Kind**: `Terraform`
- **Runner Image**: `hashicorp/terraform:1.5`
- **Git Repo**: `https://github.com/bunnyshell/templates.git`
- **Git Branch**: `main`

### Deployment Commands:

- The `terraform.tfvars` file is dynamically populated with the template variables during deployment.
- The Terraform backend is managed by Bunnyshell to ensure a seamless deployment and state management process.

### Destruction Commands:

- The same process is followed to destroy the resources by populating a `terraform.tfvars` file and running `terraform destroy`.

## Notes

- The Kinesis stream is created with a unique identifier (`{{env.unique}}`) to ensure naming uniqueness in your AWS account.
- For encryption, you can switch between no encryption (`NONE`) and AWS-managed KMS encryption (`KMS`).
  
---

This `README.md` provides users with an overview of how the Bunnyshell template for AWS Kinesis works, how to customize the configuration, and the key components involved in deployment and destruction using Terraform.