# Projeto de Provisionamento de EKS com Terraform

Este repositório consome o módulo [comunidadedevops](https://github.com/leandrostoew/comunidadedevops) para criar um cluster EKS com Terraform.

## 📁 Estrutura do Projeto

```
use-comunidadedevops-terraform/
├── main.tf                # Declaração do módulo EKS
├── terraform.tfvars       # Variáveis com valores específicos para o ambiente
├── terraform.tfstate*     # Arquivo gerado com o estado da infraestrutura
└── .terraform/            # Pasta com módulos e plugins
```

## ▶️ Como usar

### 1. Inicializar o Terraform

```bash
terraform init
```

### 2. Verificar o plano de execução

```bash
terraform plan
```

### 3. Aplicar as mudanças

```bash
terraform apply -auto-approve
```

## ✅ Requisitos

- Terraform >= 1.4
- AWS CLI configurado com permissão para EKS
- Subnets públicas já existentes na AWS:
  - `subnet-xxxxxxx`
  - `subnet-yyyyyyy`

## 📦 Variáveis utilizadas

As variáveis são definidas em `terraform.tfvars`:

```hcl
project_name     = "demoeks"
cidr_block       = "10.0.0.0/16"
region           = "us-east-1"
public_subnet_1a = "subnet-xxxxxxx"
public_subnet_1b = "subnet-yyyyyyy"
tags = {
  Environment = "dev"
  Owner       = "leandro"
}
```

---

Este projeto segue boas práticas para reuso e modularização de infraestrutura com Terraform. Sinta-se livre para clonar, adaptar e utilizar em seus ambientes.

