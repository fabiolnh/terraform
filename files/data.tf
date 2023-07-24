# To bring some data that you could use
data "aws_sqs_queue" "test" {
  name = var.sqs_test
}