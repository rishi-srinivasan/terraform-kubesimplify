resource "local_file" "tf_notes" {
  filename = "${path.module}/TF_NOTES.txt"
  content  = <<EOT
This file was created using the local_file resource in Terraform.
EOT
}