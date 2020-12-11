variable "aws_service_access_principals" {
  description = "List of AWS service principal names for which you want to enable integration with this organization."
  type        = set(string)
  default = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
  ]
}

variable "enable_all_features" {
  description = "Whether or not to enable all features (`true`) or just consolidated billing (`false`)."
  type        = bool
  default     = true
}
