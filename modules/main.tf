locals {
  default = try(jsondecode(file("${path.module}/config/default.json")))
  defaults = {
    tags = local.default.tags
  }
}
