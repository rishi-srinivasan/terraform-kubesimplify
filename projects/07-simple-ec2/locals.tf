module "config" {
  source = "../../modules"
}

locals {
  tags = {
    Name        = "${module.config.default_tags.Product}-ec2-${module.config.default_tags.Environment}",
    Environment = module.config.default_tags.Environment,
    Product     = module.config.default_tags.Product,
    CreatedBy   = module.config.default_tags.CreatedBy,
    Deployment  = module.config.default_tags.Deployment,
  }
}
