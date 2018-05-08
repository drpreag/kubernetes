# debian_kubernetes

Install Kubernetes cluster on a premise, on debian or ubuntu VMs (apt-get packaging system).
Succesfuly tested on Debian 9 and Ubuntu 16.04 LTS (just add sudo before call scripts)

Run install_instructions_docker.sh (sudo install_instructions_docker.sh for Ubuntu) script on every machine in a cluster. 
This will install docker, docker-compose and kubernetes commands on every VM.

After that run install_instructions_master.sh (sudo install_instructions_master.sh) only on master node. 
After creating cluster you will get info how to join nodes to cluster.

This script assume one master per cluster. For more advanced cluster configurations, with more then one master script need to be altered.
