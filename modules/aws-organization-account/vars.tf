variable "name" {
  description = "A friendly name for the member account."
  type        = string
}

variable "email" {
  description = "The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account."
  type        = string
}

variable "role_name" {
  description = "The name of an IAM role that Organizations automatically preconfigures in the new member account."
  type        = string
  default     = "allow-full-access-from-management-account"
}

variable "parent_id" {
  description = "The parent Organizational Unit ID or Root ID for the account. Defaults to the organization default Root ID."
  type        = string
  default     = null
}

variable "tags" {
  description = "A key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "allow_iam_billing_access" {
  description = "Whether or not IAM users have access the billing information for this account."
  type        = bool
  default     = true
}
