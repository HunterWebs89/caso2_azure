#!/bin/bash

echo "### Despliegue con Ansible ###"

ansible-playbook 00-hosts.yaml
ansible-playbook 01-requisitos.yaml
sleep 30
ansible-playbook 02-nfs.yaml
ansible-playbook 03-kubernetes.yaml
ansible-playbook 04-master.yaml
sleep 30
ansible-playbook 05-workers.yaml
sleep 30
ansible-playbook 06-ingress-controller
ansible-playbook 07-argocd.yaml
ansible-playbook 08-helm-app.yaml
