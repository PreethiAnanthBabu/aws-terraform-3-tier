output "vpc_id" {
  value = aws_vpc.main.id
}

output "alb_dns_name" {
  value = aws_lb.app.dns_name
}

output "target_group_arn" {
  value = aws_lb_target_group.app.arn
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.app.name
}

output "rds_endpoint" {
  value = aws_db_instance.mysql.address
}

output "rds_port" {
  value = aws_db_instance.mysql.port
}

output "ec2_role_name" {
  value = aws_iam_role.ec2_role.name
}

output "route53_name_servers" {
  description = "Route 53 name servers to configure in GoDaddy"
  value       = aws_route53_zone.main.name_servers
}

output "website_url" {
  description = "Website domain"
  value       = "http://${var.domain_name}"
}