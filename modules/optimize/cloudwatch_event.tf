resource "aws_cloudwatch_event_rule" "lambda_event_rule" {
  name = var.cloudwatch_rule_name
  description = var.cloudwatch_rule_description
  schedule_expression = var.cloudwatch_rule_schedule_expression
}

resource "aws_cloudwatch_event_target" "lambda_target" {
  arn = module.lambda_function.lambda_function_arn
  rule = aws_cloudwatch_event_rule.lambda_event_rule.name
  depends_on = [
    module.lambda_function.lambda_function_arn
  ]
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call_rw_fallout_retry_step_deletion_lambda" {
  statement_id = "AllowExecutionFromCloudWatch"
  action = "lambda:InvokeFunction"
  function_name = module.lambda_function.lambda_function_name
  principal = "events.amazonaws.com"
  source_arn = aws_cloudwatch_event_rule.lambda_event_rule.arn
}