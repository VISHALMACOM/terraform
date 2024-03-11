#remove_role

data "aws_iam_role" "existing_role" {
  name = "example-role"  # Specify the name of the existing IAM role
}

