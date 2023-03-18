# Place your commands here
kind create cluster --name kind-1 --config kind/cluster-config.yaml

kubectl apply -f manifests/k8s/backend-deployment.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

kubectl apply -f manifests/k8s/backend-service.yaml

kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission

kubectl apply -f manifests/k8s/backend-ingress.yaml
