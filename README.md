# Terraform AWS & Local Provider Project

## Overview
This project uses [Terraform](https://www.terraform.io/) to provision resources on AWS and manage local resources.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account and credentials configured (`~/.aws/credentials`)
- Access to the local machine for local provider resources

## Providers Used
- **AWS**: Manages cloud infrastructure (EC2, S3, etc.)
- **Local**: Manages local files and directories

## Setup

1. Clone the repository:
   ```
   git clone <repo-url>
   cd <project-directory>
   ```

2. Initialize Terraform:
   ```
   terraform init
   ```

3. Review and customize variables in `terraform.tfvars` or `variables.tf`.

## Usage

1. Plan the deployment:
   ```
   terraform plan
   ```

2. Apply the configuration:
   ```
   terraform apply
   ```

3. Destroy resources when done:
   ```
   terraform destroy
   ```

## Project Structure

- `main.tf`: Main Terraform configuration
- `variables.tf`: Input variables
- `outputs.tf`: Output values
- `provider.tf`: Provider configuration

## Notes

- Ensure your AWS credentials are set up before running Terraform.
- The local provider is used for tasks like creating files or directories on your machine.


