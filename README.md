# caso2_azure
Caso Práctico 2 - UNIR (Curso Experto DevOps) 

## 03/07/2022 - Estructura del repositorio (organización)

```
├── Ansible
│   ├── deploy.sh
│   ├── hosts
│   ├── playbook.yml
│   └── roles
│       ├── role1
│       ├── role2
│       └── role3
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