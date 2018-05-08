# Optional stuff: 

Tweak UI access like in
https://blog.tekspace.io/kubernetes-dashboard-remote-access/

To run via proxy:
kubectl proxy --address="192.168.1.128" --port=8001 --accept-hosts="^*$" &

But, better way of running is node port. Kubernetes dashboard is nodeported on master_node_ip:32767
