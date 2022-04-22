output "publicip" {
  value       = aws_instance.ec2instance.*.public_ip
  description = "Public Ip"
}
output "privateip" {
  value       = [for ip in aws_instance.ec2instance.*.private_ip : ip]
  description = "Private_IP"
}