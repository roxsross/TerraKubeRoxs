locals {}

variable "nombre_cluster" {
  type    = string
  default = "tfkuberoxs"
}

variable "version_k8s" {
  type    = string
  default = "v1.28.3"
}