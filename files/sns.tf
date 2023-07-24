module "sns_test" {
  source = "github.com/terraform-aws-modules/terraform-aws-sns.git"
  name   = var.sns_test
  subscriptions = {
    sqs = {
      protocol = "sqs"
      endpoint = module.sqs_test.queue_arn
    }
  }
}