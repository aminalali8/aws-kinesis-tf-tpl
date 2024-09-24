# Bunnyshell AWS Kinesis Terraform Template Repository 

This repository contains a collection of Terraform configurations for deploying AWS Kinesis streams, along with integration for Bunnyshell environments.


## Contents

- **Terraform Files**: The main Terraform files (`main.tf`, `providers.tf`, `outputs.tf`, `variables.tf`) for deploying an AWS Kinesis stream.
- **Bunnyshell Configuration**: Template files and configuration for running the Terraform scripts in a Bunnyshell environment.
- **Readme for Kinesis Template**: Detailed instructions for the AWS Kinesis template are available under `.bunnyshell/templates/tf-kinesis/readme.md`.

## Usage

### Adding the Template to Your Bunnyshell Account

This repository contains a template designed to be used with Bunnyshell. To add this template to your own Bunnyshell account, you must follow the steps outlined in the Bunnyshell documentation:

- [Bunnyshell Templates Documentation](https://documentation.bunnyshell.com/docs/templates-what-are-templates)

The documentation will guide you through the process of uploading this template to your Bunnyshell account, so you can customize it or modify the configuration based on your needs.

### Bunnyshell Built-in Templates

If you do not wish to modify the template manually, this configuration will be available as part of the **built-in templates** provided by Bunnyshell. You can find it under the available templates in the Bunnyshell platform.

### Steps to Use the Template:

1. **Check Built-in Templates**: Visit your Bunnyshell account, navigate to the Templates section, and search for the AWS Kinesis Terraform template.
   
2. **Customizing the Template**: If you need to customize the template, refer to the [Bunnyshell Templates Documentation](https://documentation.bunnyshell.com/docs/templates-what-are-templates) to learn how to upload and modify templates.

## Requirements

- **Bunnyshell Account**: Required to deploy the template.
- **Terraform**: Ensure Terraform is installed to run the configuration locally if needed.
- **AWS Account**: AWS credentials (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and `AWS_DEFAULT_REGION`) are required for the deployment of AWS Kinesis.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

This version of the `README.md` clarifies that users need to refer to the Bunnyshell documentation to add and customize the template and informs them that the template is available as a built-in option on the Bunnyshell platform.