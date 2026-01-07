resource "aws_iam_user" "lb"{
    name = "hari.${count.index}"
    count = 4
}

output "iam_user_arn"{
    value = aws_iam_user.lb[*].arn
}