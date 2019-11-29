
#Get the AKS context
az aks get-credential -g advent-aks -n advent-aks

#Deploy the Managed Idenity Controller and Node Managed Identity
kubectl apply -f https://raw.githubusercontent.com/Azure/aad-pod-identity/master/deploy/infra/deployment-rbac.yaml

#Install and bind the Azure Identity
kubectl apply -f ./yaml_files/aadpodidentity.yaml
kubectl apply -f ./yaml_files/aadpodidentitybinding.yaml