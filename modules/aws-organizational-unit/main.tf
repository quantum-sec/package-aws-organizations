terraform {
  required_version = ">= 1.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.49.0"
    }
  }
}

resource "aws_organizations_organizational_unit" "ou" {
  name      = var.name
  parent_id = var.parent_id
}
