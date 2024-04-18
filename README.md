To run local keycloak on local k8 cluster 
1) install minikube and start it
2) install kubectl
3) installl kind & helm
4) helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add codecentric https://codecentric.github.io/helm-charts
5) helm repo update
6) docker build -t thomasdarimont/keycloakx-kubeping .
7) kind load docker-image thomasdarimont/keycloakx-kubeping:latest
8) helm install keycloak-db bitnami/postgresql --values ./keycloak-db-values.yaml
9) helm install keycloak codecentric/keycloakx --values ./keycloak-server-values.yaml
10) kubectl port-forward service/keycloak-keycloakx-http 8080:80

to uninstall

helm uninstall keycloak
helm uninstall keycloak-db


credits : https://github.com/codecentric/helm-charts
