resource "aws_budgets_budget" "monthly_budget" {
  name         = "${var.name_prefix}Monthly Budget"
  budget_type  = "COST"
  limit_amount = var.budget_limit
  limit_unit   = "USD"
  time_unit    = "MONTHLY"

  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = 80
    threshold_type      = "PERCENTAGE"

    subscriber_email_addresses = [var.budget_notification_email]
  }
}
