output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.myvpc.id
}

output "subnet1_id" {
  description = "ID of the first subnet (AZ1)"
  value       = aws_subnet.subnet1.id
}

output "subnet2_id" {
  description = "ID of the second subnet (AZ2)"
  value       = aws_subnet.subnet2.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.gw.id
}

output "route_table_id" {
  description = "The ID of the Route Table"
  value       = aws_route_table.public.id
}

output "security_group_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.web_sg.id
}

output "s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.website_bucket.bucket
}

output "launch_template_id" {
  description = "ID of the EC2 Launch Template"
  value       = aws_launch_template.nginx_template.id
}

output "alb_arn" {
  description = "ARN of the Application Load Balancer"
  value       = aws_lb.web_alb.arn
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.web_alb.dns_name
}

output "target_group_arn" {
  description = "ARN of the ALB target group"
  value       = aws_lb_target_group.web_tg.arn
}

output "autoscaling_group_name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.web_asg.name
}
