variable "region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnets" {
  type = list(object({
    cidr = string
    az   = string
  }))
}

variable "app_subnets" {
  type = list(object({
    cidr = string
    az   = string
  }))
}

variable "db_subnets" {
  type = list(object({
    cidr = string
    az   = string
  }))
}

variable "instance_type" {
  type = string
}

variable "db_instance_class" {
  type = string
}

variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}
