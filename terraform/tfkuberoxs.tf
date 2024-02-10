resource "minikube_cluster" "roxs" {
  cluster_name       = var.nombre_cluster
  kubernetes_version = var.version_k8s

  driver = "docker"
  cni    = "cilium"

  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}
