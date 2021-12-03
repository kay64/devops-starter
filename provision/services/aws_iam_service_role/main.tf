module "main" {
  source             = "../../resources/aws/iam_role"
  name               = var.name
  assume_role_policy = jsonencode({
    "Statement" : [
      {
        "Action" : "sts:AssumeRole",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : var.principal
        }
      }
    ],
    "Version" : "2012-10-17"
  })
}

module "policy_attachment" {
  count      = length(var.attached_policy_arns)
  source     = "../../resources/aws/iam_role_policy_attachment"
  policy_arn = var.attached_policy_arns[count.index]
  role_name  = module.main.name
}

module "policy" {
  for_each  = var.policies
  source    = "../../resources/aws/iam_role_policy"
  name      = "${var.name}-${each.key}"
  role_name = module.main.name
  policy    = each.value
}
