############################
##       AWS ROLES        ##
############################

variable "aws_auth_roles" {
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
}

variable "eks_cluster_name" {
  type = string
  description = "The EKS Cluster Name"
}
