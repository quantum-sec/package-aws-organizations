terraform {
  required_version = ">= 1.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.49.0"
    }
  }
}

resource "aws_organizations_organization" "org" {
  aws_service_access_principals = var.aws_service_access_principals
  feature_set                   = var.enable_all_features ? "ALL" : "CONSOLIDATED_BILLING"
}
