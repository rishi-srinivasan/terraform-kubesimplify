output "aws_sns_topic_arn" {
  description = "The ARN of the SNS topic created for email delivery."
  value       = aws_sns_topic.sns_email_delivery.arn
}
