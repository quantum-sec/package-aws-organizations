output "id" {
  description = "The unique identifier of the organization."
  value       = aws_organizations_organization.org.id
}

output "arn" {
  description = "The ARN of the organization."
  value       = aws_organizations_organization.org.arn
}

output "management_account_id" {
  description = "The unique identifier of the management account."
  value       = aws_organizations_organization.org.management_account_id
}

output "management_account_arn" {
  description = "The ARN of the management account."
  value       = aws_organizations_organization.org.master_account_arn
}

output "management_account_email" {
  description = "The email address associated with the management account."
  value       = aws_organizations_organization.org.master_account_email
}

output "roots" {
  description = "A list of organization roots."
  value       = aws_organizations_organization.org.roots
}
