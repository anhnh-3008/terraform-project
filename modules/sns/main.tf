resource "aws_sns_topic" "alarm_topic" {
  name = "${var.name_prefix}alarm-topic"
}

resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.alarm_topic.arn
  protocol  = "email"
  endpoint  = var.notification_email
}
