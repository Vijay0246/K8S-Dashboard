resource "kubernetes_namespace" "mt-namespace-k8s-dashboard" {
metadata {
labels = {
mylabel = "mt-namespace"
}
name = "kubernetes-dashboard"
}
}
