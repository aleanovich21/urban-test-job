### Kubernetes

1. Deploy namespace urban and 3 replicas to cluster
    
   `kubectl apply -f k8s-man/autoscaling.yaml`

2. Deploy namespace stagin. Give it a name gcloud and the same staging namespace.
   
   kubectl apply -f k8s-man/service-account.yaml`

3. For example I deploy the nginx controller using the helm. Add the ingress-nginx repository.
   
   `helm repo add ingress-nginx \`
   `https://kubernetes.github.io/ingress-nginx`

4. Create service and Ingress
   
   `kubectl apply -f k8s-man/ingress-controller.yaml`