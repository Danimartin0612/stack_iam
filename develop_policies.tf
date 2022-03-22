module "iam_assumable_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "~> 4"

  trusted_role_arns = [
    "arn:aws:iam::307990089504:root",
    "arn:aws:iam::835367859851:user/anton",
  ]

  create_role = true

  role_name         = "deploy_role"
  role_requires_mfa = true

  custom_role_policy_arns = [
    "arn:aws:iam::aws:policy/AWSCodeCommitFullAccess",
    "arn:aws:iam::aws:policy/AWSCodeDeployFullAccess",
  ]
  number_of_custom_role_policy_arns = 2
}

