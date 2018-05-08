# kubernetes-prometheus
Configuration files for setting up prometheus monitoring on Kubernetes cluster.

You can find the full tutorial from here 
	https://devopscube.com/setup-prometheus-monitoring-on-kubernetes/
or on github:
	https://github.com/bibinwilson/kubernetes-prometheus

Run configmap, deployment and service: 
	kubectl -n monitoring create -f *.yaml

Prometheus service is nodeported on cluster.internal.jatheon.com:30000
