variable "user_names" {
  description = "List of IAM users"
  type        = list(string)
}

variable "groups" {
  description = "Map of IAM groups to be created"
  type        = map(list(string))
}

variable "admin_policy_arn" {
  description = "ARN of the admin policy"
  type        = string
}

variable "password_policy" {
  description = "Password policy configuration"
  type = object({
    minimum_password_length    = number
    require_symbols            = bool
    require_numbers            = bool
    require_uppercase_characters = bool
    require_lowercase_characters = bool
    allow_users_to_change_password = bool
    hard_expiry                = bool
    password_reuse_prevention  = number
    max_password_age           = number
  })
}
