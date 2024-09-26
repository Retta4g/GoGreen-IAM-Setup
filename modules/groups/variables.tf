variable "groups" {
  description = "Map of IAM groups to be created"
  type        = map(list(string))
}

variable "admin_policy_arn" {
  description = "ARN of the admin policy"
  type        = string
}
