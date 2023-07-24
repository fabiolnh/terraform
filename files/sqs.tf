module "sqs_test" {
  source = "github.com/terraform-aws-modules/terraform-aws-sqs.git"
  name   = var.sqs_test
  redrive_policy = {
    deadLetterTargetArn = module.test_dlq.dead_letter_queue_arn
    maxReceiveCount     = 10
  }

  queue_policy_statements = {
    sns = {
      sid     = "SNSPublish"
      actions = ["sqs:SendMessage"]

      principals = [
        {
          type        = "Service"
          identifiers = ["sns.amazonaws.com"]
        }
      ]

      conditions = [{
        test     = "ArnEquals"
        variable = "aws:SourceArn"
        values   = [local.arn_sns_all]
      }]
    }
  }
}
module "sqs_test_dlq" {
  source     = "github.com/terraform-aws-modules/terraform-aws-sqs.git"
  name       = var.sqs_test
  create_dlq = var.create_dlq
}