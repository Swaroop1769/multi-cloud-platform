output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "ec2_instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "ec2_instance_private_ip" {
  description = "The private IP of the EC2 instance"
  value       = aws_instance.web.private_ip
}

output "ec2_iam_role" {
  description = "IAM Role assigned to EC2"
  value       = aws_iam_role.ec2_role.name
}
