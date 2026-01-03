output "alb_sg" {
  description = "ALB security group ID"
  value       = aws_security_group.alb.id
}

output "web_sg" {
  description = "Web tier security group ID"
  value       = aws_security_group.web.id
}

output "app_sg" {
  description = "App tier security group ID"
  value       = aws_security_group.app.id
}

output "db_sg" {
  description = "Database security group ID"
  value       = aws_security_group.db.id
}
