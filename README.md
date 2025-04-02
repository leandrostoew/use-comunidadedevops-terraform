# Projeto: use-comunidadedevops-terraform

Este repositório demonstra como utilizar o módulo reutilizável [comunidadedevops](https://github.com/leandrostoew/comunidadedevops) para provisionamento de infraestrutura na AWS com Terraform. O módulo principal contempla a criação de:

- VPC customizada
- Subnets públicas
- Cluster Amazon EKS
- Node Groups
- AWS Load Balancer Controller

## 📅 Requisitos

- Terraform >= 1.3.0
- AWS CLI configurado com credenciais válidas
- Acesso a uma conta AWS
- Subnets criadas previamente

## ⚙️ Variáveis esperadas

O módulo espera as seguintes variáveis definidas no `terraform.tfvars`:

```hcl
project_name     = "demoeks"
cidr_block       = "10.0.0.0/16"
region           = "us-east-1"
public_subnet_1a = "subnet-xxxxxxxx"
public_subnet_1b = "subnet-yyyyyyyy"
tags = {
  Environment = "dev"
  Owner       = "leandro"
}
```

> Obs.: As subnets devem estar previamente criadas na conta AWS.

## 🚀 Como usar este repositório

1. Clone o repositório:
   ```bash
   git clone git@github.com:leandrostoew/use-comunidadedevops-terraform.git
   cd use-comunidadedevops-terraform
   ```

2. Ajuste os valores no arquivo `terraform.tfvars`.

3. Inicialize o Terraform:
   ```bash
   terraform init
   ```

4. Execute o plano:
   ```bash
   terraform plan
   ```

5. Aplique as mudanças:
   ```bash
   terraform apply -auto-approve
   ```

## 📁 Estrutura

```
.
├── main.tf              # Definição do módulo principal
├── terraform.tfvars     # Valores das variáveis
├── README.md            # Este arquivo :)
├── .terraform/          # Cache local do Terraform
└── .terraform.lock.hcl  # Lockfile de provedores
```

## ✅ Licença

Este projeto está sob a licença [MIT](https://opensource.org/licenses/MIT).

---

Para dúvidas, melhorias ou sugestões, fique à vontade para abrir uma *issue* ou *pull request*.

Feito com ❤️ por Leandro Justino Stowew.

