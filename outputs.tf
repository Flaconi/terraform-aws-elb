output "security_group_id" {
  description = "The ID of the ELB security group to attach the the LC/ASG/EC2 instance in order to be accessable by the ELB."
  value       = "${element(concat(aws_security_group.elb.*.id, list("")), 0)}"
}

output "id" {
  description = "The name of the ELB"
  value       = "${element(concat(aws_elb.elb.*.id, list("")), 0)}"
}

output "name" {
  description = "The name of the ELB"
  value       = "${element(concat(aws_elb.elb.*.name, list("")), 0)}"
}

output "fqdn" {
  description = "The auto-generated FQDN of the ELB."
  value       = "${element(concat(aws_elb.elb.*.dns_name, list("")), 0)}"
}

output "route53_public_dns_name" {
  description = "The route53 public dns name of the ELB if set."
  value       = "${var.route53_public_dns_name}"
}

output "route53_private_dns_name" {
  description = "The route53 private dns name of the ELB if set."
  value       = "${var.route53_private_dns_name}"
}
