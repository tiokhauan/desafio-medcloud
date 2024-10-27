resource "aws_budgets_budget" "monthly_cost_budget" {
  name              = "MonthlyCostBudget"
  budget_type       = "COST"
  limit_amount      = "1"                  # Valor máximo do orçamento em dólares
  limit_unit        = "USD"

  # Utilizando apenas a data, sem a parte da hora
  time_period_start = formatdate("2006-01-02", timestamp())
  time_unit         = "MONTHLY"

  # Notificação quando o custo atingir 80% do limite
  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = 80                 # Percentual do orçamento para a notificação
    threshold_type      = "PERCENTAGE"
    subscriber_email_addresses = ["khauan71@gmail.com"]
  }

  # Notificação quando o custo atingir 100% do limite
  notification {
    comparison_operator = "GREATER_THAN"
    notification_type   = "ACTUAL"
    threshold           = 100
    threshold_type      = "PERCENTAGE"
    subscriber_email_addresses = ["khauan71@gmail.com"]
  }
}
