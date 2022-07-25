#!/bin/bash

echo "### Despliegue infraestructura ###"

echo "### Inicializar Terraform ###"
terraform init

echo "### Desplegar infraestructura en Azure con Terraform ###"
terraform apply

echo "### Refrescar infraestructura en Azure con Terraform (Get Public IPs) ###"
terraform apply -refresh-only