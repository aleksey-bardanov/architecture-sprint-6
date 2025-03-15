#! /bin/bash

minikube start --addons=metrics-server --vm-driver=kvm2 # тут может быть другой драйвер
kubectl apply -f ./deployment.yaml 
kubectl apply -f ./service.yaml 
kubectl apply -f ./hpa.yaml 

minikube service scale-test-app-service --url