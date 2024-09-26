resource "aws_iam_group_membership" "group_membership" {
  for_each = var.groups

  name  = each.key
  group = each.key
  users = each.value
}
