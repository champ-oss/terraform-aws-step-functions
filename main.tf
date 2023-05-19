resource "random_string" "identifier" {
  length  = 5
  special = false
  upper   = false
  lower   = true
  number  = true
}

locals {
  tags = {
    cost    = "shared"
    creator = "terraform"
    git     = var.git
  }
}
