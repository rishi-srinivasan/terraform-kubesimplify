module "config" {
  source = "../modules"
}

locals {
  tags = module.config.tags
}
