resource "aws_cloudwatch_log_group" "ec2_logs" {
  name              = "/ec2/cloudwatch-logs"
  retention_in_days = 7
}
