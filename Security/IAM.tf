resource "aws_iam_user" "example" {
  name = "example-user"
}

resource "aws_iam_group" "example" {
  name = "example-group"
}

resource "aws_iam_user_group_membership" "example" {
  user = aws_iam_user.example.name
  group = aws_iam_group.example.name
}

resource "aws_iam_policy" "example" {
  name        = "example-policy"
  description = "An example IAM policy"
  policy      = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "s3:ListBucket"
      Effect = "Allow"
      Resource = "*"
    }]
  })
}
