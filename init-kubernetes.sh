echo "Building Graham Solution Intranet Application"

### Create configmap for nginx

# secret
kubectl apply -f manifests/intranet-secret.yaml

# redis
#kubectl apply -f manifests/redis/deployment.yaml
#kubectl apply -f manifests/redis/service.yaml

# db
kubectl apply -f manifests/spring-db/statefulset.yaml
kubectl apply -f manifests/spring-db/service.yaml

# volume
kubectl apply -f manifests/spring-db/pv.yaml
kubectl apply -f manifests/spring-db/pvc.yaml
