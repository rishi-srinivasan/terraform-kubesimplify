<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.21.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.21.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_config"></a> [config](#module\_config) | ../modules | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.ec2_web](https://registry.terraform.io/providers/hashicorp/aws/6.21.0/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_ami_name"></a> [aws\_ami\_name](#input\_aws\_ami\_name) | The name pattern of the AWS AMI to use for EC2 instances. | `string` | `"ami-0767046d1677be5a0"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to deploy resources in. | `string` | `"eu-central-1"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The type of EC2 instance to deploy. | `string` | `"t2.micro"` | no |
<!-- END_TF_DOCS -->
