# resource "helm_release" "efs_csi_driver" {
#   name       = "aws-efs-csi-driver"
#   repository = "https://kubernetes-sigs.github.io/aws-efs-csi-driver/"
#   chart      = "aws-efs-csi-driver"
#   namespace  = "kube-system"
#   values = [
#     templatefile("${path.module}/manifests/efs-csi-driver.yml",
#       {
#         aws_efs_role_arn = var.aws_efs_role_arn
#       }
#     )
#
#   ]
# }
