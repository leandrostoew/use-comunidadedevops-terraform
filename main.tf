module "eks" {
  source = "git@github.com:leandrostoew/comunidadedevops.git"
  
  project_name     = var.project_name
  cidr_block       = var.cidr_block
  region           = var.region
  public_subnet_1a = var.public_subnet_1a
  public_subnet_1b = var.public_subnet_1b
  tags             = var.tags
}
