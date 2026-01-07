resource "aws_iam_user" "this" {
  name = "test-aws-user${count.index}"
  count = 4
}

output "arn"{
  value = aws_iam_user.this[*].arn
}

output "name"{
  value = aws_iam_user.this[*].name
}

output "combined"{
  value = zipmap (aws_iam_user.this[*].name, aws_iam_user.this[*].arn)
}