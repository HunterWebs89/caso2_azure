#!/bin/bash

echo "### Despliegue con Ansible ###"

echo "### Configurar hosts ###"

ansible-playbook 00-hosts.yaml

echo "### Aplicar Pre-requisitos ###"

ansible-playbook 01-requisitos.yaml

echo "### Reiniciando VMs (Sleep 30 segundos) ###"
sleep 30

echo "### Desplegar servidor NFS ###"

ansible-playbook 02-nfs.yaml

echo "### Desplegar Kubernetes ###"

ansible-playbook 03-kubernetes.yaml

echo "### Aplicar configuraciones al nodo Master ###"

ansible-playbook 04-master.yaml

echo "### Reiniciando Master (Sleep 75 segundos - Copiar valores variables kubeadm-join desde Master ) ###"

sleep 75

echo "### Aplicar configuraciones a los nodo Workers ###"

ansible-playbook 05-workers.yaml

echo "### Reiniciando Workers (Sleep 30 segundos) ###"

sleep 30

echo "### Desplegar Ingress-Controller ###"

ansible-playbook 06-ingress-controller.yaml

echo "### Desplegar ArgoCD ###"

ansible-playbook 07-argocd.yaml

echo "### Desplegar Helm y MyApp (Jenkins+NFS-Server) ###"

ansible-playbook 08-helm-app.yaml

echo "### Automatización finalizada con éxito ###"