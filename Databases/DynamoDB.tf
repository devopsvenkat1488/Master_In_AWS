resource "aws_dynamodb_table" "example" {
  name           = "example-table"
  hash_key       = "id"
  read_capacity  = 5
  write_capacity = 5
  attribute {
    name = "id"
    type = "S"
  }
  billing_mode = "PROVISIONED"
}
