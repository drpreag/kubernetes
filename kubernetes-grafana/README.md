Inspired by github repo:
	https://github.com/kayrus/prometheus-kubernetes

First create config map from all .json files in subfolder grafana-import-dashboards-configmap:

	kubectl -n monitoring create configmap grafana-import-dashboards --from-file=grafana-import-dashboards-configmap -o json | kubectl -n monitoring apply -f -

Then create deployment and service :

	kubectl -n monitoring create -f grafana-deployment.yaml
	kubectl -n monitoring create -f grafana-svc.yaml

Grafana service is NodePorted on cluster.internal.jatheon.com:30001

