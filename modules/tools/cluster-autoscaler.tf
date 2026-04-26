
resource "helm_release" "cluster_autoscaler" {

  depends_on = [
    helm_release.metrics_server
  ]

  chart = "cluster-autoscaler"
  name  = "cluster-autoscaler"
  repository = "https://kubernetes.github.io/autoscaler"
  version = "9.23.0"
  namespace = "kube-system"
  reuse_values = true
  cleanup_on_fail = true
  create_namespace = true
  values = [
    templatefile(
      "${path.module}/manifests/cluster-autoscaler.yml",
      {
        clusterName = var.cluster_name
        region = var.region
        ca_role_arn = var.ca_role_arn
      }
    )
  ]
}