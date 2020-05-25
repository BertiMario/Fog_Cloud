kind create cluster --name $USER
export KUBECONFIG="$(kind get kubeconfig-path --name=$USER)"
kubectl apply -f code_volume.yaml 
kubectl apply -f datab_volume.yaml
kubectl apply -f webserver.yaml
kubectl apply -f mysql.yaml
kubectl apply -f hpa_web.yaml