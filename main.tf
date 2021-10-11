#https://raw.githubusercontent.com/kubernetes/dashboard/v2.3.1/aio/deploy/helm-chart/kubernetes-dashboard/values.yaml
resource "helm_release" "mt-k8s-dashboard" {
name = "kubernetes-dashboard"
chart = "kubernetes-dashboard"
namespace = "kubernetes-dashboard"
#version = "2.0.3"
repository = "https://kubernetes.github.io/dashboard/"
timeout = 1800



values = [
"${file("values.yaml")}"

]
depends_on = [

   kubernetes_namespace.mt-namespace-k8s-dashboard

  ]
}

#http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:https/proxy/#/workloads?namespace=argocd
