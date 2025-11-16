provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2_web" {

  ami           = var.aws_ami_name
  instance_type = var.instance_type
  tags          = local.tags
}
