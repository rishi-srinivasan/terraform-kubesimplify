variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "eu-central-1"
}

variable "aws_ami_name" {
  description = "The name pattern of the AWS AMI to use for EC2 instances."
  type        = string
  default     = "ami-0767046d1677be5a0"
}

variable "instance_type" {
  description = "The type of EC2 instance to deploy."
  type        = string
  default     = "t2.micro"
}
