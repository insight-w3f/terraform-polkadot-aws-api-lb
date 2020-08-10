//output "lb_target_group_id" {
//  value = aws_lb_target_group.this.id
//}
//
//output "lb_target_group_arn" {
//  value = aws_lb_target_group.this.arn
//}

output "public_ips" {
  value = aws_eip.this.*.public_ip
}

output "dns_name" {
  value = aws_lb.this.dns_name
}

output "lb_id" {
  value = aws_lb.this.id
}

output "lb_arn" {
  value = aws_lb.this.arn
}

output "lb_target_group_arn" {
  value = aws_lb_target_group.this.arn
}

output "lb_target_group_id" {
  value = aws_lb_target_group.this.id
}
