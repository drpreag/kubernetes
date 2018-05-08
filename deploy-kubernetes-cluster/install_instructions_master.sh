#!/bin/bash

# Apply this script to k8s master only

apt-get update && apt-get upgrade

# Initialize master node

kubeadm init --pod-network-cidr 10.244.0.0/16 2>&1 | tee cluster.txt

# For any non-root user create local configuration like this:

#mkdir -p $HOME/.kube
#sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
#sudo chown -R $(id -u):$(id -g) $HOME/.kube

# For root user run this:

export KUBECONFIG=/etc/kubernetes/admin.conf

# Install a pod network (flannel)

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml
#kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/k8s-manifests/kube-flannel-rbac.yml
