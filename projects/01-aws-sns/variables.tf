variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-central-1"
}

variable "sns_email_endpoint" {
  description = "The email endpoint to subscribe to the SNS topic"
  type        = string
}

variable "email_message" {
  description = "The message to send via SNS email"
  type        = string
  default     = "Welcome to the first SNS topic deployment using Terraform!"
}
