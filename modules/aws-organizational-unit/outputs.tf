output "id" {
  description = "The unique identifier of this organizational unit."
  value       = aws_organizations_organizational_unit.ou.id
}

output "arn" {
  description = "The ARN of this organizational unit."
  value       = aws_organizations_organizational_unit.ou.arn
}
