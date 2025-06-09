#!/bin/bash
#Install and expose Argo CD in a Kubernetes cluster

## Prerequisites

# A running Kubernetes cluster
# `kubectl` configured to access the cluster
# `base64` utility installed

kubectl create namespace argocd #Create a namespace for Argo CD

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml #Apply the Argo CD manifest

kubectl get svc -n argocd #Check services in Argo CD namespace

kubectl edit svc argocd-server -n argocd # Change type to LoadBalancer

sleep 5

kubectl get svc -n argocd

sleep 5

kubectl get secret -n argocd argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo #Retrieve Argo CD admin password

## Accessing the Argo CD UI

# URL: `https://localhost:8443` or LoadBalancer endpoint
# Username: `admin`
# Password: (as retrieved above)
