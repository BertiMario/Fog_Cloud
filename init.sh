kind create cluster --name $USER
export KUBECONFIG="$(kind get kubeconfig-path --name=$USER)"
kubectl apply -f nginx_configMap.yaml
kubectl apply -f alpine_ampache.yaml
kubectl apply -f frontend.yaml
kubectl apply -f hpa_web.yaml