terraform {
  required_version = ">= 0.12"
}

resource "aws_organizations_account" "account" {
  name      = var.name
  email     = var.email
  role_name = var.role_name
  parent_id = var.parent_id
  tags      = var.tags

  iam_user_access_to_billing = var.allow_iam_billing_access ? "ALLOW" : "DENY"

  lifecycle {
    ignore_changes = [
      role_name,
    ]
  }
}
