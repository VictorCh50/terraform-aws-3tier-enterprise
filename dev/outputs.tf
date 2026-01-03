output "web_url" {
  description = "Web application URL"
  value       = "http://${module.alb.alb_dns_name}"
}
