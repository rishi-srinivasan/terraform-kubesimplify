resource "aws_sns_topic" "sns_email_delivery" {
  name     = local.tags.Name
  tags_all = local.tags
}

resource "aws_sns_topic_subscription" "sns_email_subscription" {
  topic_arn  = aws_sns_topic.sns_email_delivery.arn
  protocol   = "email"
  endpoint   = var.sns_email_endpoint
  depends_on = [aws_sns_topic.sns_email_delivery]
}

resource "null_resource" "local_exec_provisioner" {
  provisioner "local-exec" {
    command = <<EOF
                  aws sns publish \
                  --topic-arn "${aws_sns_topic.sns_email_delivery.arn}" \
                  --message "${var.email_message}"
                  EOF

    interpreter = ["/bin/bash", "-c"]
    working_dir = path.module
  }
  depends_on = [aws_sns_topic_subscription.sns_email_subscription]
}
