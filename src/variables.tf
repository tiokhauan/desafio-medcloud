
variable "aws_region" {
  description = "Região usada para criar os recursos da AWS"
  type = string
  nullable = false
}

variable "aws_vpc_name" {
  description = "________"
  type = string
  nullable = false
}

variable "aws_vpc_cidr" {
  description = "________"
  type = string
  nullable = false
}

variable "aws_vpc_azs" {
  description = "________"
  type = set(string)
  nullable = false
}

variable "aws_vpc_private_subnets" {
  description = "________"
  type = set(string)
  nullable = false
}

variable "aws_vpc_public_subnets" {
  description = "________"
  type = set(string)
  nullable = false
}

variable "aws_eks_name" {
  description = "________"
  type = string
  nullable = false
}

variable "aws_eks_version" {
  description = "________"
  type = string
  nullable = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "________"
  type = set(string)
  nullable = false
}

variable "aws_project_tags" {
  description = "________"
  type = map(any)
  nullable = false
}