# Call the users module
module "iam_users" {
  source     = "./modules/users"
  user_names = var.user_names
}

# Call the groups module
module "iam_groups" {
  source           = "./modules/groups"
  groups           = var.groups
  admin_policy_arn = var.admin_policy_arn
}

# Call the policies module with the correct argument
module "iam_policies" {
  source          = "./modules/policies"
  password_policy = var.password_policy
}

# Call the group memberships module
module "group_memberships" {
  source     = "./modules/group_memberships"
  groups     = var.groups
  user_names = var.user_names
}
