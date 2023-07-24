resource "aws_iam_policy" "policy_test" {
  name = var.policy_test

  policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Action" : [
            "sqs:*",
            "sns:*",
            "s3:*",
            "kms:*"
          ],
          "Resource" : [
            module.sqs_test.queue_arn,
            local.arn_all
          ],
          "Effect" : "Allow"
        }
      ]
    }
  )
}
resource "aws_iam_role" "role_test" {
  name = var.role_test
  assume_role_policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Principal" : {
            "Federated" : local.arn_identity_provider
          },
          "Action" : "sts:AssumeRoleWithWebIdentity",
          "Condition" : {
            "StringEquals" : {
              "${local.string_identity_provider_aud}" : "sts.amazonaws.com",
              "${local.string_identity_provider_sub}" : local.string_service_test
            }
          }
        }
      ]
    }
  )
}

resource "aws_iam_role_policy_attachment" "attach_test" {
  role       = aws_iam_role.role_test.name
  policy_arn = aws_iam_policy.policy_test.arn
}