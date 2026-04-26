module "aws_auth" {
  source = "terraform-aws-modules/eks/aws//modules/aws-auth"
  version = "~> 20.0"
  manage_aws_auth_configmap = true
  aws_auth_roles  = var.aws_auth_roles

}
