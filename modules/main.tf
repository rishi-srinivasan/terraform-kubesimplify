locals {
  default = try(jsondecode(file("${path.module}/config/default.json")))
  defaults = {
    tags = {
      Environment = lookup(local.default, "environment", "dev")
      Product     = lookup(local.default, "product", "tf")
      CreatedBy   = lookup(local.default, "createdBy", "terraform")
      Deployment  = lookup(local.default, "deployment", "automation")
    }
  }
}
