resource "aws_iam_group" "groups" {
  for_each = var.groups

  name = each.key
}

resource "aws_iam_group_policy_attachment" "attach_admin_policy" {
  for_each = var.groups

  group      = each.key
  policy_arn = var.admin_policy_arn # Attach admin policy to groups
}
