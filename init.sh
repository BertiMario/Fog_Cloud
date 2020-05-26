kind create cluster --name $USER
export KUBECONFIG="$(kind get kubeconfig-path --name=$USER)"
kubectl apply -f webserver.yaml
kubectl apply -f hpa_web.yaml