
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnets" {
  description = "Subnet IDs for the Auto Scaling Group"
  type        = list(string)
}

variable "sg" {
  description = "Security Group ID"
  type        = string
}

variable "min" {
  description = "Minimum number of instances"
  type        = number
}

variable "max" {
  description = "Maximum number of instances"
  type        = number
}

variable "desired" {
  description = "Desired number of instances"
  type        = number
}

variable "user_data" {
  description = "User data script"
  type        = string
}

variable "target_group_arns" {
  type = list(string)
  description = "Target groups to attach ASG instances to" 
}
