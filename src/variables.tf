variable "aws_region" {
  description = "Região usada para criar os recursos da AWS"
  type = string
  nullable = false
}

variable "aws_vpc_name" {
  description = "Nome da VPC onde os recursos serão criados"
  type = string
  nullable = false
}

variable "aws_vpc_cidr" {
  description = "Bloco CIDR para definir o intervalo de endereços IP da VPC"
  type = string
  nullable = false
}

variable "aws_vpc_azs" {
  description = "Zonas de disponibilidade (AZs) usadas para a VPC"
  type = set(string)
  nullable = false
}

variable "aws_vpc_private_subnets" {
  description = "Sub-redes privadas da VPC para recursos que não devem ser acessíveis publicamente"
  type = set(string)
  nullable = false
}

variable "aws_vpc_public_subnets" {
  description = "Sub-redes públicas da VPC para recursos que precisam de acesso público"
  type = set(string)
  nullable = false
}

variable "aws_eks_name" {
  description = "Nome do cluster EKS (Elastic Kubernetes Service)"
  type = string
  nullable = false
}

variable "aws_eks_version" {
  description = "Versão do Kubernetes usada no cluster EKS"
  type = string
  nullable = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Tipos de instância para os grupos de nós gerenciados do EKS"
  type = set(string)
  nullable = false
}

variable "aws_project_tags" {
  description = "Tags de projeto usadas para organização e monitoramento de custos dos recursos AWS"
  type = map(any)
  nullable = false
}
