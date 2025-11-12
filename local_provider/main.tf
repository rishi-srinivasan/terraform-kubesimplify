resource "local_file" "tf_notes" {
  filename = "${path.module}/TF_NOTES.txt"
  content  = <<EOT
This file was created using the local_file resource in Terraform.
EOT
}

resource "local_sensitive_file" "tf_notrs" {
  filename = "${path.module}/TF_NOTES_SENSITIVE.txt"
  content  = <<EOT
This sensitive file was created using the local_sensitive_file resource in Terraform.
EOT
}
