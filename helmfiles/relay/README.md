# docker hub

Docker Hub access is required to pull the `mlvb91/` image. To create a `docker-registry` secret in Kubernetes run:

```
kubectl create secret docker-registry <YOUR-IMAGEPULLSECRET-NAME> -n <YOUR-NAMESPACE> --docker-username=<YOUR-DOCKER-HUB-USERNAME> --docker-password=<YOUR-DOCKER-HUB-PERSONAL-ACCESS-TOKEN> --docker-email=<YOUR-DOCKER-HUB-EMAIL>  --docker-server=docker.io
```
