# caso2_azure
Caso Práctico 2 - UNIR (Curso Experto DevOps) 

## 03/07/2022 - Estructura del repositorio (organización)

```
├── Ansible
│   ├── deploy.sh
│   ├── ping.sh
│   ├── hosts
│   ├── 00-hosts.yaml
│   ├── 01-requisitos.yaml
│   ├── 02-nfs.yaml
│   ├── 03-kubernetes.yaml
│   ├── 04-master.yaml
│   ├── 05-workers.yaml
│   ├── 06-ingress-controller.yaml
│   ├── 07-argocd.yaml
│   ├── 08-helm-app.yaml
│   └── group_vars
│       ├── hosts.yaml
│       ├── kubeadm-join-command.yaml
│       ├── network.yaml
│   └── roles
        └── hosts
        └── requisitos
        └── nfs
        └── kubernetes
        └── master
        └── workers
        └── ingress-controller
        └── argocd
        └── helm-app
└── Terraform
    ├── correccion-vars.tf
    ├── output.tf
    ├── main.tf
    └── recursos
        └── network.tf
        └── master.tf
        └── master-network.tf
        └── master-security.tf
        └── nfs.tf
        └── nfs-network.tf
        └── nfs-security.tf
        └── worker.tf
        └── worker-network.tf
        └── worker-security.tf
└── Ansible
        └── deployment.yaml
        └── persistentvolume.yaml
        └── ingress.yaml
        └── jenkins-svc.yaml
        └── nfs-svc.yaml
```

## 10/07/2022 - Despliegue vía Terraform

- Upgrade Azure Provider from 3.0.2 to 3.1.0
- Definición de correccion-vars.tf
- Definición de output.tf
- Estructura de recursos.tf
- Modificación del README.md

## 17/07/2022 - Despliegue vía Terraform (modificaciones)

- Replanificación de despliegue (individualización por instancia)
- Reelección de tipo de instancia
- Rediseño de variables
- Rediseño de output.tf
- Eliminados ficheros inválidos
- Añadido tag de entorno
- Añadidos NGS
- Añadido Storage Account
- Modificación del README.md

## 23/07/2022 - Despliegue Ansible

- Añadida toda la estructura de automatización para Ansible
- Añadidos bash scripts
- Añadida estructura de objetos yaml en K8s para desplegar Apps Jenkins/NFS-Server
- Primeros pasos para generar Helm chart Apps Jenkins/NFS-Server (Prueba)
- Modificación output.tf
- Eliminados ficheros inválidos
- Modificación del README.md
