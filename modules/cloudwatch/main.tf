resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "${var.name_prefix}HighCPUUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"
  threshold           = "70"

  alarm_description = "This metric monitors EC2 CPU utilization"
  actions_enabled   = true

  alarm_actions = [
    var.alarm_sns_topic,
  ]

  dimensions = {
    InstanceId = var.instance_id
  }
}
