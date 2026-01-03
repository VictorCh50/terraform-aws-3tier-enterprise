variable "subnets" {
  description = "Public subnet IDs for the ALB"
  type        = list(string)
}

variable "sg" {
  description = "Security group ID for the ALB"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for ALB target group"
  type        = string
}