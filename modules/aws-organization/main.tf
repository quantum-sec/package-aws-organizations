terraform {
  required_version = ">= 0.12"
}

resource "aws_organizations_organization" "org" {
  aws_service_access_principals = var.aws_service_access_principals
  feature_set                   = var.enable_all_features ? "ALL" : "CONSOLIDATED_BILLING"
}
