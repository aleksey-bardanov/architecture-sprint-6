#! /bin/bash

minikube start --addons=metrics-server --vm-driver=<Назавние драйвера> # у меня драйвер kvm2
kubectl apply -f ./Exc2/deployment.yaml 
kubectl apply -f ./Exc2/service.yaml 
kubectl apply -f ./Exc2/hpa.yaml 

minikube service scale-test-app-service --url