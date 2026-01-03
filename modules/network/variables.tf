variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet definitions"
  type = list(object({
    cidr = string
    az   = string
  }))
}

variable "app_subnets" {
  description = "App tier subnet definitions"
  type = list(object({
    cidr = string
    az   = string
  }))
}

variable "db_subnets" {
  description = "Database subnet definitions"
  type = list(object({
    cidr = string
    az   = string
  }))
}
