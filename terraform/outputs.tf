output "cluster_name" {
  description = "El nombre asignado al clúster k8s[minikube]"
  value       = minikube_cluster.roxs.cluster_name
}

output "cluster_context_hostname" {
  description = "El nombre de host del clúster k8s[minikube]"
  value       = minikube_cluster.roxs.host
}

output "cluster_context_cluster_ca_certificate" {
  description = "El Certificado del clúster k8s [minikube]"
  value       = minikube_cluster.roxs.cluster_ca_certificate
  sensitive   = true
}

output "cluster_context_client_certificate" {
  description = "El Certificado del Cliente del clúster k8s[minikube]"
  value       = minikube_cluster.roxs.client_certificate
  sensitive   = true
}

output "cluster_context_client_key" {
  description = "La Clave del Cliente del clúster k8s[minikube]"
  value       = minikube_cluster.roxs.client_key
  sensitive   = true
}