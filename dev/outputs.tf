output "alb_dns_name" {
  description = "Public DNS name of the Application Load Balancer"
  value       = module.alb.alb_dns_name
}

output "db_endpoint" {
  description = "RDS endpoint"
  value       = module.database.db_endpoint
}

output "web_asg_name" {
  value = module.web_asg.asg_name
}

output "app_asg_name" {
  value = module.app_asg.asg_name
}
